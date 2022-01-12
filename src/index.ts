import { paragraph } from "./fake";

interface dataItem {
  [key: string]: string;
}

export const handler = async (event: dataItem[]) => ({
  statusCode: 200,
  body: JSON.stringify(event),
  message: paragraph(),
});
