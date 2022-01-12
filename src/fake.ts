import faker from "faker";

interface paragraphProps {
  quantity: number;
}

export const paragraph = (
  { quantity }: paragraphProps = { quantity: 5 }
): string => faker.lorem.paragraph(quantity);
