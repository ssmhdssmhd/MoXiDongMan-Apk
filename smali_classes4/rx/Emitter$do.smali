.class public final enum Lrx/Emitter$do;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/Emitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "do"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lrx/Emitter$do;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BUFFER:Lrx/Emitter$do;

.field public static final enum DROP:Lrx/Emitter$do;

.field public static final enum ERROR:Lrx/Emitter$do;

.field public static final enum LATEST:Lrx/Emitter$do;

.field public static final enum NONE:Lrx/Emitter$do;

.field private static final synthetic do:[Lrx/Emitter$do;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lrx/Emitter$do;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lrx/Emitter$do;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lrx/Emitter$do;->NONE:Lrx/Emitter$do;

    .line 2
    new-instance v1, Lrx/Emitter$do;

    const-string v3, "ERROR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lrx/Emitter$do;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lrx/Emitter$do;->ERROR:Lrx/Emitter$do;

    .line 3
    new-instance v3, Lrx/Emitter$do;

    const-string v5, "BUFFER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lrx/Emitter$do;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lrx/Emitter$do;->BUFFER:Lrx/Emitter$do;

    .line 4
    new-instance v5, Lrx/Emitter$do;

    const-string v7, "DROP"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lrx/Emitter$do;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lrx/Emitter$do;->DROP:Lrx/Emitter$do;

    .line 5
    new-instance v7, Lrx/Emitter$do;

    const-string v9, "LATEST"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lrx/Emitter$do;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lrx/Emitter$do;->LATEST:Lrx/Emitter$do;

    const/4 v9, 0x5

    new-array v9, v9, [Lrx/Emitter$do;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 6
    sput-object v9, Lrx/Emitter$do;->do:[Lrx/Emitter$do;

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

.method public static valueOf(Ljava/lang/String;)Lrx/Emitter$do;
    .locals 1

    .line 1
    const-class v0, Lrx/Emitter$do;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lrx/Emitter$do;

    return-object p0
.end method

.method public static values()[Lrx/Emitter$do;
    .locals 1

    .line 1
    sget-object v0, Lrx/Emitter$do;->do:[Lrx/Emitter$do;

    invoke-virtual {v0}, [Lrx/Emitter$do;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrx/Emitter$do;

    return-object v0
.end method
