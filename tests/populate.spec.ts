import { test, expect } from "@playwright/test";
import { playersMock } from "./mocks/playersMock";

test("test", async ({ page }) => {
  await page.goto("http://localhost:5173/");
  await page.getByRole("button", { name: "Populate categories" }).click();

  // add players

  for (const p of playersMock) {
    await page.getByRole("link", { name: "Players" }).click();
    await page.getByPlaceholder("First name").click();
    await page.getByPlaceholder("First name").fill(p.firstName);
    await page.getByPlaceholder("Last name").fill(p.lastName);
    await page.getByPlaceholder("Email").fill(p.email);
    await page.getByLabel("Category").click();
    await page.getByLabel("1").click();
    await page.getByLabel("Position").click();
    await page.getByLabel(p.position).click();
    await page.getByRole("button", { name: "Submit" }).click();
  }

  // add players

  // add doubles

  for (let i = 0; i < playersMock.length; i += 2) {
    await page.getByRole("link", { name: "Doubles" }).click();
    await page.getByLabel("Player one").click();
    await page
      .getByLabel(`${playersMock[i].firstName} ${playersMock[i].lastName}`)
      .click();
    await page.getByLabel("Player two").click();
    await page
      .getByLabel(
        `${playersMock[i + 1].firstName} ${playersMock[i + 1].lastName}`
      )
      .click();
    await page.getByLabel("Category").click();
    await page.getByLabel("1 ALL").click();
    await page.getByRole("button", { name: "Submit" }).click();
  }

  // add doubles

  // add places
  await page.getByRole("link", { name: "Places" }).click();
  await page.getByPlaceholder("Place name").click();
  await page.getByPlaceholder("Place name").fill("Complexo CK");
  await page.getByPlaceholder("Address").click();
  await page.getByPlaceholder("Address").fill("General Gomes Tortinho, 255.");
  await page.getByRole("button", { name: "Submit" }).click();
  // add places

  // create event
  await page.getByRole("link", { name: "Events" }).click();
  await page.getByPlaceholder("Event Name").click();
  await page.getByPlaceholder("Event Name").fill("Copa do Bem");
  await page.getByLabel("Categories").click();
  await page.getByLabel("1").click();
  await page.getByRole("button", { name: "Add Category" }).click();
  await page.getByLabel("Places").click();
  await page.getByLabel("Complexo CK").click();
  await page.getByRole("button", { name: "Add Place" }).click();
  await page.getByRole("button", { name: "Submit" }).click();
  await page.getByRole("button", { name: "Show all events" }).click();
  await page.getByRole("button", { name: "Register in event" }).click();

  // create event

  // register doubles in event

  for (let i = 0; i < playersMock.length; i += 2) {
    await page.getByLabel("Doubles").click();
    await page
      .getByLabel(
        `${playersMock[i].firstName} ${playersMock[i].lastName}${
          playersMock[i + 1].firstName
        } ${playersMock[i + 1].lastName}`
      )
      .click();
    await page.getByRole("button", { name: "Register Doubles" }).click();
    // await page.getByRole("button", { name: "Close event" }).click();
    // await page.getByRole("button", { name: "Register in event" }).click();
  }
  // register doubles in event
});
