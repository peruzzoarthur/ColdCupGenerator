import { test, expect } from "@playwright/test";
import { playersMock } from "./mocks/playersMock";

test("test", async ({ page }) => {
  await page.goto("http://localhost:5173/");

  // create event
  await page.getByRole("link", { name: "Events" }).click();
  await page.getByPlaceholder("Event Name").click();
  await page.getByPlaceholder("Event Name").fill("Copa dumau");
  await page.getByLabel("Categories").click();
  await page.getByLabel("1").click();
  await page.getByRole("button", { name: "Add Category" }).click();
  await page.getByLabel("Categories").click();
  await page.getByLabel("2").click();
  await page.getByRole("button", { name: "Add Category" }).click();
  await page.getByLabel("Places").click();
  await page.getByLabel("Complexo CK").click();
  await page.getByRole("button", { name: "Add Place" }).click();
  await page.getByRole("button", { name: "Submit" }).click();
  await page.getByRole("button", { name: "Show all events" }).last().click();
  await page.getByRole("button", { name: "Open event" }).last().click();

  // create event

  // register doubles in event

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
  await page.goto("http://localhost:5173/");
  await page.getByRole("link", { name: "Events" }).click();
  await page.getByRole("button", { name: "Show all events" }).click();
  await page.getByRole("button", { name: "Open event" }).nth(1).click();
  await page.getByRole("button", { name: "Generate matches 🎾" }).click();
  // register doubles in event

  // // set games results

  // await page.goto("http://localhost:5173/");
  // await page.getByRole("link", { name: "Events" }).click();
  // await page.getByRole("button", { name: "Show all events" }).click();
  // await page.getByRole("button", { name: "Open event" }).click();
  // await page.locator(".w-2\\/3 > .flex > .justify-end").first().click();
  // await expect(
  //   page.getByRole("heading", { name: "Match #1", exact: true })
  // ).toBeVisible();
  // await page.getByLabel("Arthur Ozzurep / Ju Ju").click();
  // await page.getByLabel("Arthur Ozzurep / Ju Ju").fill("9");
  // await page.getByLabel("Maria Ij / Medusa Pluminha").click();
  // await page.getByLabel("Maria Ij / Medusa Pluminha").fill("5");
  // await page.getByLabel("Winner").click();
  // await page.getByRole("group").getByText("Arthur Ozzurep / Ju Ju").click();
  // await page.getByRole("button", { name: "Submit" }).click();
  // //
  // await expect(page.getByRole("heading", { name: "Match #2" })).toBeVisible();
  // await page.locator(".w-2\\/3 > .flex > .justify-end").first().click();
  // await page.getByLabel("Arthur Ozzurep / Ju Ju").click();
  // await page.getByLabel("Arthur Ozzurep / Ju Ju").fill("9");
  // await page.getByLabel("Xoan Plastic / Guel deDeus").click();
  // await page.getByLabel("Xoan Plastic / Guel deDeus").fill("4");
  // await page.locator(".min-w-0 > .p-1").first().click();
  // await page.getByLabel("Winner").click();
  // await page.getByRole("group").getByText("Arthur Ozzurep / Ju Ju").click();
  // await page.getByRole("button", { name: "Submit" }).click();
  // //
  // await expect(page.getByRole("heading", { name: "Match #3" })).toBeVisible();
  // await page.locator(".w-2\\/3 > .flex > .justify-end").first().click();
  // await page.getByLabel("Arthur Ozzurep / Ju Ju").click();
  // await page.getByLabel("Arthur Ozzurep / Ju Ju").fill("9");
  // await page.getByLabel("Juma Zobrinha / Medusinha").click();
  // await page.getByLabel("Juma Zobrinha / Medusinha").fill("2");
  // await page.getByLabel("Winner").click();
  // await page.getByRole("group").getByText("Arthur Ozzurep / Ju Ju").click();
  // await page.getByRole("button", { name: "Submit" }).click();
  // await expect(page.getByRole("heading", { name: "Match #4" })).toBeVisible();
  // await page.locator(".w-2\\/3 > .flex > .justify-end").first().click();
  // await page.getByLabel("Arthur Ozzurep / Ju Ju").click();
  // await page.getByLabel("Arthur Ozzurep / Ju Ju").fill("9");
  // await page.getByLabel("Mercedes Orquita / Marley").click();
  // await page.getByLabel("Mercedes Orquita / Marley").fill("1");
  // await page.getByLabel("Winner").click();
  // await page.getByRole("group").getByText("Arthur Ozzurep / Ju Ju").click();
  // await page.getByRole("button", { name: "Submit" }).click();
  // //
  // await expect(page.getByRole("heading", { name: "Match #5" })).toBeVisible();
  // await page.locator(".w-2\\/3 > .flex > .justify-end").first().click();
  // await page.getByLabel("Maria Ij / Medusa Pluminha").click();
  // await page.getByLabel("Maria Ij / Medusa Pluminha").fill("9");
  // await page.getByLabel("Xoan Plastic / Guel deDeus").click();
  // await page.getByLabel("Xoan Plastic / Guel deDeus").fill("5");
  // await page.getByLabel("Winner").click();
  // await page.getByRole("group").getByText("Maria Ij / Medusa Pluminha").click();
  // await page.getByRole("button", { name: "Submit" }).click();
  // //
  // await expect(page.getByRole("heading", { name: "Match #6" })).toBeVisible();
  // await page.locator(".w-2\\/3 > .flex > .justify-end").first().click();
  // await page.getByLabel("Maria Ij / Medusa Pluminha").click();
  // await page.getByLabel("Maria Ij / Medusa Pluminha").fill("9");
  // await page.getByLabel("Juma Zobrinha / Medusinha").click();
  // await page.getByLabel("Juma Zobrinha / Medusinha").fill("4");
  // await page.getByLabel("Winner").click();
  // await page.getByRole("group").getByText("Maria Ij / Medusa Pluminha").click();
  // await page.getByRole("button", { name: "Submit" }).click();
  // //
  // await expect(page.getByRole("heading", { name: "Match #7" })).toBeVisible();
  // await page.locator(".w-2\\/3 > .flex > .justify-end").first().click();
  // // await page.locator('.p-1 > .rounded-xl > div:nth-child(2) > div:nth-child(2)').first().click();

  // await page.getByLabel("Mercedes Orquita / Marley").click();
  // await page.getByLabel("Mercedes Orquita / Marley").fill("9");
  // await page.getByLabel("Maria Ij / Medusa Pluminha").fill("2");
  // await page.getByLabel("Maria Ij / Medusa Pluminha").click();
  // await page.getByLabel("Winner").click();
  // await page.getByRole("option", { name: "Mercedes Orquita / Marley" }).click();
  // await page.getByRole("button", { name: "Submit" }).click();
  // await expect(page.getByRole("heading", { name: "Match #8" })).toBeVisible();
  // await page.locator(".w-2\\/3 > .flex > .justify-end").first().click();
  // await page.getByLabel("Xoan Plastic / Guel deDeus").click();
  // await page.getByLabel("Xoan Plastic / Guel deDeus").fill("9");
  // await page.getByLabel("Juma Zobrinha / Medusinha").click();
  // await page.getByLabel("Juma Zobrinha / Medusinha").fill("2");
  // await page.getByLabel("Winner").click();
  // await page.getByRole("group").getByText("Xoan Plastic / Guel deDeus").click();
  // await page.getByRole("button", { name: "Submit" }).click();
  // //
  // await expect(page.getByRole("heading", { name: "Match #9" })).toBeVisible();
  // await page.locator(".w-2\\/3 > .flex > .justify-end").first().click();
  // await page.getByLabel("Xoan Plastic / Guel deDeus").click();
  // await page.getByLabel("Xoan Plastic / Guel deDeus").fill("9");
  // await page.getByLabel("Mercedes Orquita / Marley").click();
  // await page.getByLabel("Mercedes Orquita / Marley").fill("8");
  // await page.getByLabel("Winner").click();
  // await page.getByRole("group").getByText("Xoan Plastic / Guel deDeus").click();
  // await page.getByRole("button", { name: "Submit" }).click();
  // //
  // await expect(page.getByRole("heading", { name: "Match #10" })).toBeVisible();
  // await page.locator(".w-2\\/3 > .flex > .justify-end").click();
  // await page.getByLabel("Mercedes Orquita / Marley").click();
  // await page.getByLabel("Mercedes Orquita / Marley").fill("9");
  // await page.getByLabel("Juma Zobrinha / Medusinha").click();
  // await page.getByLabel("Juma Zobrinha / Medusinha").fill("1");
  // await page.getByLabel("Winner").click();
  // await page.getByRole("group").getByText("Mercedes Orquita / Marley").click();
  // await page.getByRole("button", { name: "Submit" }).click();

  // // set games results
});
