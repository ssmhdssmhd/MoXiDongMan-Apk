.class public final enum Lrx/do$do;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/do;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "do"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lrx/do$do;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum OnCompleted:Lrx/do$do;

.field public static final enum OnError:Lrx/do$do;

.field public static final enum OnNext:Lrx/do$do;

.field private static final synthetic do:[Lrx/do$do;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lrx/do$do;

    const-string v1, "OnNext"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lrx/do$do;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrx/do$do;->OnNext:Lrx/do$do;

    new-instance v1, Lrx/do$do;

    const-string v3, "OnError"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lrx/do$do;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lrx/do$do;->OnError:Lrx/do$do;

    new-instance v3, Lrx/do$do;

    const-string v5, "OnCompleted"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lrx/do$do;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lrx/do$do;->OnCompleted:Lrx/do$do;

    const/4 v5, 0x3

    new-array v5, v5, [Lrx/do$do;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 2
    sput-object v5, Lrx/do$do;->do:[Lrx/do$do;

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

.method public static valueOf(Ljava/lang/String;)Lrx/do$do;
    .locals 1

    .line 1
    const-class v0, Lrx/do$do;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lrx/do$do;

    return-object p0
.end method

.method public static values()[Lrx/do$do;
    .locals 1

    .line 1
    sget-object v0, Lrx/do$do;->do:[Lrx/do$do;

    invoke-virtual {v0}, [Lrx/do$do;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrx/do$do;

    return-object v0
.end method
