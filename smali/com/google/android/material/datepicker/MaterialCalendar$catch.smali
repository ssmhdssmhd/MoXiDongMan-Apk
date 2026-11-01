.class final enum Lcom/google/android/material/datepicker/MaterialCalendar$catch;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/datepicker/MaterialCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "catch"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/material/datepicker/MaterialCalendar$catch;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DAY:Lcom/google/android/material/datepicker/MaterialCalendar$catch;

.field public static final enum YEAR:Lcom/google/android/material/datepicker/MaterialCalendar$catch;

.field private static final synthetic do:[Lcom/google/android/material/datepicker/MaterialCalendar$catch;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/google/android/material/datepicker/MaterialCalendar$catch;

    const-string v1, "DAY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/datepicker/MaterialCalendar$catch;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/material/datepicker/MaterialCalendar$catch;->DAY:Lcom/google/android/material/datepicker/MaterialCalendar$catch;

    .line 2
    new-instance v1, Lcom/google/android/material/datepicker/MaterialCalendar$catch;

    const-string v3, "YEAR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/android/material/datepicker/MaterialCalendar$catch;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/material/datepicker/MaterialCalendar$catch;->YEAR:Lcom/google/android/material/datepicker/MaterialCalendar$catch;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/google/android/material/datepicker/MaterialCalendar$catch;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lcom/google/android/material/datepicker/MaterialCalendar$catch;->do:[Lcom/google/android/material/datepicker/MaterialCalendar$catch;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/material/datepicker/MaterialCalendar$catch;
    .locals 1

    .line 1
    const-class v0, Lcom/google/android/material/datepicker/MaterialCalendar$catch;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/datepicker/MaterialCalendar$catch;

    return-object p0
.end method

.method public static values()[Lcom/google/android/material/datepicker/MaterialCalendar$catch;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/material/datepicker/MaterialCalendar$catch;->do:[Lcom/google/android/material/datepicker/MaterialCalendar$catch;

    invoke-virtual {v0}, [Lcom/google/android/material/datepicker/MaterialCalendar$catch;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/material/datepicker/MaterialCalendar$catch;

    return-object v0
.end method
