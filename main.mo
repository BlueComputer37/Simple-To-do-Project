//motoko giriş 
//import
import Map "mo:base/HashMap";
import Text "mo:base/Text";
//smart contanct ( akıllı sözleşme) actor un yanına yazı yazarak ısım verebılırız mesela actor erdem {}
actor {
  type Name =  Text ;
  type Phone = Text ;

  type Entry = {
    desc : Text ;
    phone : Phone ;
  };
//değişkenler
// let -> immutable (değişmez)
// var -> MUTABLE (değiştirilebilen)
//cons -> ... (şimdilik girmeyecez.)

let phonebook = Map.HashMap<Name , Entry>(0, Text.equal , Text.hash);

//query => sorgular
//update => geliştirme 
//async()=> paralelde hızlı bir biçimde yapılmasını sağlıyor. 
public func  insert(name : Name ,entry : Entry) : async() {
  phonebook.put(name,entry);
};
//loop -> if when while break  kullanılabiliyor. 
// ? işaretinin olması string veya integer olsun her şekilde gösteriyor olacak. 
public query func lookup (name : Name) : async ?Entry {
  phonebook.get(name);
};

};
