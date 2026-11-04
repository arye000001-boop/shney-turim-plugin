# תוסף שני טורים לאוצריא

הצגת מסמך כספר מודפס עם אפשרות למספר טורים.

תוסף עבור תוכנת [אוצריא](https://github.com/Otzaria/otzaria).

> וחד בדרא — מוקדש לע"נ הבה"ח מאיר בן יבדלחט"א ר׳ אברהם הראל שאער זצ"ל

## התקנה

1. הורידו את קובץ ההתקנה העדכני מדף ה-[Releases](../../releases/latest) (קובץ בסיומת `.otzplugin`).
2. התקינו אותו באוצריא דרך מנגנון ההתקנה של תוספים.

דרישת מינימום: אוצריא בגרסה `0.9.97` ומעלה.

## שימוש

- כפתור **"פתח בתצוגת שני טורים"** בסרגל הכלים של הקורא.
- קיצור מקשים: `Ctrl` + `Shift` + `I`.
- לשונית כלים בשם **"שני טורים"**.

## מבנה המאגר

| נתיב | תיאור |
|------|--------|
| `src/` | קוד המקור של התוסף (`manifest.json`, `index.html` והספריות `pdf-lib` ו-`fontkit`) |
| `dist/` | תיקיית הפלט של `build.sh` (לא נשמרת במאגר) |
| `.github/workflows/` | בנייה אוטומטית של התוסף |
| `build.sh` | סקריפט שאורז את `src/` לקובץ `.otzplugin` חדש |

## בנייה מחדש

```bash
./build.sh
```

הסקריפט קורא את הגרסה מ-`src/manifest.json` ויוצר את `dist/shney-turim-v<גרסה>.otzplugin`.

## בנייה אוטומטית

בכל push ל-`main` שמשנה את `src/`, GitHub Actions בונה את קובץ ה-`.otzplugin` ומעלה אותו ל-Release של הגרסה הנוכחית (לפי `version` ב-`src/manifest.json`).
כדי להוציא גרסה חדשה, מעדכנים את `version` ב-`src/manifest.json` ועושים push, והשאר קורה לבד.

## ספריות צד שלישי

- [pdf-lib](https://github.com/Hopding/pdf-lib)
- [fontkit](https://github.com/foliojs/fontkit)
