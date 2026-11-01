.class public final enum Ljavax/annotation/meta/for;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljavax/annotation/meta/for;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ALWAYS:Ljavax/annotation/meta/for;

.field public static final enum MAYBE:Ljavax/annotation/meta/for;

.field public static final enum NEVER:Ljavax/annotation/meta/for;

.field public static final enum UNKNOWN:Ljavax/annotation/meta/for;

.field private static final synthetic do:[Ljavax/annotation/meta/for;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Ljavax/annotation/meta/for;

    const-string v1, "ALWAYS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljavax/annotation/meta/for;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/annotation/meta/for;->ALWAYS:Ljavax/annotation/meta/for;

    .line 2
    new-instance v1, Ljavax/annotation/meta/for;

    const-string v3, "UNKNOWN"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljavax/annotation/meta/for;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ljavax/annotation/meta/for;->UNKNOWN:Ljavax/annotation/meta/for;

    .line 3
    new-instance v3, Ljavax/annotation/meta/for;

    const-string v5, "MAYBE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ljavax/annotation/meta/for;-><init>(Ljava/lang/String;I)V

    sput-object v3, Ljavax/annotation/meta/for;->MAYBE:Ljavax/annotation/meta/for;

    .line 4
    new-instance v5, Ljavax/annotation/meta/for;

    const-string v7, "NEVER"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Ljavax/annotation/meta/for;-><init>(Ljava/lang/String;I)V

    sput-object v5, Ljavax/annotation/meta/for;->NEVER:Ljavax/annotation/meta/for;

    const/4 v7, 0x4

    new-array v7, v7, [Ljavax/annotation/meta/for;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Ljavax/annotation/meta/for;->do:[Ljavax/annotation/meta/for;

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

.method public static valueOf(Ljava/lang/String;)Ljavax/annotation/meta/for;
    .locals 1

    .line 1
    const-class v0, Ljavax/annotation/meta/for;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ljavax/annotation/meta/for;

    return-object p0
.end method

.method public static values()[Ljavax/annotation/meta/for;
    .locals 1

    .line 1
    sget-object v0, Ljavax/annotation/meta/for;->do:[Ljavax/annotation/meta/for;

    invoke-virtual {v0}, [Ljavax/annotation/meta/for;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax/annotation/meta/for;

    return-object v0
.end method
