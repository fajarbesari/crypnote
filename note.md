model view controller


model represent view that modified by the controller


model >>> business logic
view >>> ui dynamic
controller >>> changing the view


example

encryption
model >> encrypt logic, and current returnable variable
view >> form interactive to retrieve data from user
controller >> sending to repository emmited encrypt returnable

encryption screen >> paradigm of the bussines logic of the encryption >> such app bar and outside the view >> to display the encrypt state logic >> is it error, valuate data logicly return, even the loading

view model >> a button that controller produce to change the state

controller >> a method return encrypt state that consist of returnable data, isloading, and error,


uses riverpod and getit

model >> uses get it to create singleton for accessable globally


// boundaries, a riverpod could not uses its provider while it has being used
// so while the stream produce continuesly and change the state
// another method notifier cannot be used to change the state

view >> mean state of the logic viewport
everyting returnable logic in the model should be come state to changing the view unless generator
iterable and stream must have its own provider directly


controller >> a notifier for one-click view changing and own provider for iterable/stream as contiuesly view changing


model

class encryptmodel{
// for initiate data, if its data want to display in the view maybe fetching from persistent storage
encryptBox? encryptBox;

// business logic init
future<encryptBox> get(){
await read();
	}

// business logic store to repo
future<encryptBox> store(){
final encrypt = await create();
await insert(encrypt.toDbMap());
}

// bussines logic for togle completed

bool isCompleted = false;

futur<bool> complete(){
  return  isCompleted = !isCompleted;
}

// bussines logic for validation too many chars
future<bool> valid(String crypnote){
    if (crypnote.isEmpty || crypnote.length > 1000){
        return false
    }
    return true;
}

// bussines logic for maybe to diplay ticking number endlessly
stream<int> tickNumber()async*{
    // ticking one second
   final numbers = stream.periodic(Duration(second :1));

    await for (var number in numbers){
        yield number;
    }
}

}


>> view
deduct from the model we could wrapping it into state class based on the view behaviour

one click view changing >>> wrap to class to reduce provider usage >> enc
continuesly view changing >> has its own provider


> for one click view changing
> we can see, there are returnable that have state when just the user click a button such as EncryptBox, bool
commonly uses freezed to create the class to automatically added copy with method to easier changing state

@freezed
abstract class EncryptState with _$EncryptState{
    const factory EncrptState({
        EncryptBox? encryptBox,
        bool? isCompleted,
        bool? isValid
    }) = _EncryptState
}

>> for continously emmit the value overtime to prevent provider from parts exception
>> stream logic we could send it to own provider using get it locator

final locator = GetIt.instance;

void service(){
    locator.registerLazySingleton(()=>EncryptModel());
}

>> with this we can uses the encrpt model globally access
>> finally we could create stream state own with the provider





>> controller
>> the states are bussiness to change the ui
so from the model we could see how many provider that we could to make based on the returnable value from the model

>> provider for one-click view changing
we use riverpod generator to create the controller
that return the encrypt state

@riverpod
class EncryptController extends _$EncryptController{

// use encrypt model here

final _encrypt = locator<EncryptModel>();

EncryptState build(){
    return EncryptState();
}

// and the one click view method changing here

// create initialize data if exist
future<void> initialize(){
final init = await _encrypt.get();
    state = state.copyWith(encryptBox : init);
}

// toggle completed
future<void> toggleCompeleted(EncryptBox encryptBox){
    final completed  = await _encrypt.completed()
    state = state.copyWith(isCompleted : completed);
}

}



>> provider for continously changing the view
>> usually stream or iterable

@riverpod
Stream<int> number(Ref ref)async*{
   // uses enrypt model here
   final _encrypt = locator<EncryptModel>();
   final stream = await _encrypt.tickNumber();

   await for (var number in stream){
    yield number;
   }
}

then it could diplay in the consumer widget


>> so riverpod provider could not used together
>> every bussines logic must have its own MVC clasified by the state changing, it is one click changing or continuesly changing
>> it mvc also must have its own widget depends on it
>> with the approach above, we could reduce the provider usage
>> and to destruct old state and emit new state would not raise an exception using ref.invalidate

>> if it is a one click view changing logic uses ref invalidate inside the notifier

>> if it is a continously view changing logic uses ref invalidate inside the widget to refresh new value


