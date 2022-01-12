import { paragraph } from "./fake";

describe("Paragraph tests", () => {
  test("Function returns a string", () => {
    expect(typeof paragraph()).toBe("string");
  });

  test("Default parameters work", () => {
    expect(paragraph).toBeTruthy();
  });

  test("Accepts parameters", () => {
    expect(paragraph({ quantity: 2 })).toBeFalsy();
  });
});
