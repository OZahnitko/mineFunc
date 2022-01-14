import { paragraph } from "./src/fake";

interface dataItem {
  [key: string]: string;
}

export const handler = async (event: dataItem[]) => ({
  statusCode: 200,
  body: JSON.stringify(event),
  message: paragraph({ quantity: 99 }),
  env: process.env,
});
