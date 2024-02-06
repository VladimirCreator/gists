# Dodo Pizza

## Предпросмотр
[Попробовать](https://t.me/sterlitamakfoodbot/).

Здесь можно посмотреть компоненты. # 9:50 PM Mon 29 Jan 2024

## Зависимости
Этот пакет включает в себя как минимум эти зависимости
- TypeScript
- Next
- React
- Jest # 10:43 PM Mon 29 Jan 2024
- Sass # 9:55 PM Mon 29 Jan 2024
- Storybook
- GitHub Actions # 9:56 PM Mon 29 Jan 2024

## Начало работы

## Описание
> [!NOTE]
> Результатом сборки данного пакета является серверное программное обеспечение, которое предназначено для использования в среде Node.

> [!NOTE]
> Итоговые страницы предназначены для выдачи в Telegram Bot, но ничего не мешает использовать их для просмотра в обычных браузерах.

Данный пакет является клоном пакета с таким же названием, который предоставляется для операционной системы iOS на момент 29 января 2024 года (Version 10.0.0, build 13266).

Пакет включает в себя несколько страниц:

1. Страница с товарами
1. Страница с корзиной

### Страница с товарами
Все товары берутся из базы данных PostgreSQL.

### Страница с корзиной
Здесь отображаются все товары, которые добавил агент.

## Обсуждение
> [!NOTE]
> К сожалению, данное программное обеспечение находится под влиянием проприетарной лицензии, поэтому исходный код не предоставляется.

Для каждого клиента, который запросил корневую страницу, создаётся отдельная сессия, в ответ устанавливается cookie со значением идентификатора сессии. После, каждый запрос сопровождается с cookie, который содержит информацию о корзине клиента.