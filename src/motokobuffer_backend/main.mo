import Array "mo:base/Array";
import Buffer "mo:base/Buffer";

actor {
  public func greet(name : Text) : async Text {
    return "Hello, " # name # "!";
  };

  public func example() : async [Nat] {
    let array = [1, 2, 3, 4]; // make an array
    let buffer = Buffer.fromArray<Nat>(array); // convert it to buffer
    let sameArray = buffer.toArray(); // convert it back to array
    // in the future, this will become Buffer.toArray(buffer);
    sameArray
  };
};
