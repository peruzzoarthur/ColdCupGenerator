import { test, expect } from "@playwright/test";
import { playersMock } from "./mocks/playersMock";

test("test", async ({ page }) => {
  await page.goto("http://localhost:5173/");
  // await page.goto("https://coldcupgenerator.up.railway.app/");
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
    if (i > 4) {
      //! changed from 6 to 4
      await page.getByLabel("2 ALL").click();
      await page.getByRole("button", { name: "Submit" }).click();
    } else {
      await page.getByLabel("1 ALL").click();
      await page.getByRole("button", { name: "Submit" }).click();
    }
  }

  // add doubles

  //   // add places

  await page.goto("http://localhost:5173/");
  await page.getByRole("link", { name: "Places" }).click();
  await page.getByPlaceholder("Place name").click();
  await page.getByPlaceholder("Place name").fill("Complexo CK");
  await page.getByPlaceholder("Address").click();
  await page.getByPlaceholder("Address").fill("Rua General Gome Tortinho, 235");
  await page.getByPlaceholder("Court name").click();
  await page.getByPlaceholder("Court name").fill("V1");
  await page.getByRole("button", { name: "Add" }).click();
  await page.getByPlaceholder("Court name").click();
  await page.getByPlaceholder("Court name").fill("V2");
  await page.getByRole("button", { name: "Add" }).click();
  await page.getByPlaceholder("Court name").click();
  await page.getByPlaceholder("Court name").fill("V3");
  await page.getByRole("button", { name: "Add" }).click();
  await expect(page.getByText("V1", { exact: true })).toBeVisible();
  await expect(page.getByText("V2", { exact: true })).toBeVisible();
  await expect(page.getByText("V3", { exact: true })).toBeVisible();
  await page.getByRole("button", { name: "Submit" }).click();

  //   // add places

  //   // create event
  await page.goto("http://localhost:5173/");
  await page.getByRole("link", { name: "Events" }).click();
  await page
    .locator("div")
    .filter({ hasText: /^Event Name$/ })
    .click();
  await page.getByPlaceholder("Event Name").click();
  await page.getByPlaceholder("Event Name").fill("ALLxALL #1");
  await page.getByLabel("Categories").click();
  await page.getByLabel("1").click();
  await page.getByRole("button", { name: "Add Category" }).click();
  await page.getByLabel("Categories").click();
  await page.getByLabel("2").click();
  await page.getByRole("button", { name: "Add Category" }).click();
  await expect(page.getByText("1", { exact: true })).toBeVisible();
  await expect(page.locator("div").filter({ hasText: /^2$/ })).toBeVisible();
  await page.getByLabel("Places").click();
  await page.getByLabel("Complexo CK").click();
  await page.getByRole("button", { name: "Courts" }).click();
  await page.getByLabel("V2").click();
  await page.getByLabel("V1").click();
  await page.getByLabel("V3").click();
  await page.getByRole("button", { name: "Add Place" }).click();
  await expect(page.getByText("Complexo CK").nth(1)).toBeVisible();
  await page.getByLabel("First day").click();
  await page.getByText("27").click();
  await page.getByLabel("First day").click();

  await page.getByLabel("Last day").click();
  await page.getByText("28").last().click();
  await page.getByLabel("Last day").click();

  await page.getByLabel("First game").click();
  await page.getByLabel("06:").click();
  await page.getByLabel("Last game").click();
  // await page.getByLabel("10:").nth(1).click();
  await page.getByLabel("12:").click();

  await page.getByPlaceholder("60").click();
  await page.getByPlaceholder("60").fill("60");
  await page.getByRole("button", { name: "Submit" }).click();

  //   // create event

  //   // register doubles in event

  await page.getByRole("button", { name: "Show all events" }).click();
  await page.getByRole("button", { name: "Open event" }).click();

  for (let i = 0; i < playersMock.length; i += 2) {
    await page.getByRole("combobox").click();
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
});
