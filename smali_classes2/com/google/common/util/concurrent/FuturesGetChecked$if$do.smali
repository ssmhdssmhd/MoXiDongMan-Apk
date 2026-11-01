.class final enum Lcom/google/common/util/concurrent/FuturesGetChecked$if$do;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/util/concurrent/FuturesGetChecked$GetCheckedTypeValidator;


# annotations
.annotation build Lcom/google/common/util/concurrent/strictfp;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/FuturesGetChecked$if;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "do"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/util/concurrent/FuturesGetChecked$if$do;",
        ">;",
        "Lcom/google/common/util/concurrent/FuturesGetChecked$GetCheckedTypeValidator;"
    }
.end annotation


# static fields
.field public static final enum INSTANCE:Lcom/google/common/util/concurrent/FuturesGetChecked$if$do;

.field private static final do:Ljava/lang/ClassValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ClassValue<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic if:[Lcom/google/common/util/concurrent/FuturesGetChecked$if$do;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/common/util/concurrent/FuturesGetChecked$if$do;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/util/concurrent/FuturesGetChecked$if$do;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/util/concurrent/FuturesGetChecked$if$do;->INSTANCE:Lcom/google/common/util/concurrent/FuturesGetChecked$if$do;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/common/util/concurrent/FuturesGetChecked$if$do;

    aput-object v0, v1, v2

    .line 2
    sput-object v1, Lcom/google/common/util/concurrent/FuturesGetChecked$if$do;->if:[Lcom/google/common/util/concurrent/FuturesGetChecked$if$do;

    .line 3
    new-instance v0, Lcom/google/common/util/concurrent/FuturesGetChecked$if$do$do;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/FuturesGetChecked$if$do$do;-><init>()V

    sput-object v0, Lcom/google/common/util/concurrent/FuturesGetChecked$if$do;->do:Ljava/lang/ClassValue;

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

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/util/concurrent/FuturesGetChecked$if$do;
    .locals 1

    .line 1
    const-class v0, Lcom/google/common/util/concurrent/FuturesGetChecked$if$do;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/util/concurrent/FuturesGetChecked$if$do;

    return-object p0
.end method

.method public static values()[Lcom/google/common/util/concurrent/FuturesGetChecked$if$do;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/util/concurrent/FuturesGetChecked$if$do;->if:[Lcom/google/common/util/concurrent/FuturesGetChecked$if$do;

    invoke-virtual {v0}, [Lcom/google/common/util/concurrent/FuturesGetChecked$if$do;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/util/concurrent/FuturesGetChecked$if$do;

    return-object v0
.end method


# virtual methods
.method public validateClass(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/common/util/concurrent/FuturesGetChecked$if$do;->do:Ljava/lang/ClassValue;

    invoke-virtual {v0, p1}, Ljava/lang/ClassValue;->get(Ljava/lang/Class;)Ljava/lang/Object;

    return-void
.end method
