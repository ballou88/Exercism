//
// This is only a SKELETON file for the 'Reverse String' exercise. It's been provided as a
// convenience to get you started writing code faster.
//

export const reverseString = (string) => {
  let t = [];
  let length = string.length;
  for (let i = 0; i < length; i++) {
    t[i] = string[length - 1 - i];
  }
  return t.join("");
};
