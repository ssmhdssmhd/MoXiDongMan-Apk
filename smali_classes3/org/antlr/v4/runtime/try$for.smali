.class public final enum Lorg/antlr/v4/runtime/try$for;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/antlr/v4/runtime/try;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "for"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/antlr/v4/runtime/try$for;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BYTE:Lorg/antlr/v4/runtime/try$for;

.field public static final enum CHAR:Lorg/antlr/v4/runtime/try$for;

.field public static final enum INT:Lorg/antlr/v4/runtime/try$for;

.field private static final synthetic do:[Lorg/antlr/v4/runtime/try$for;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lorg/antlr/v4/runtime/try$for;

    const-string v1, "BYTE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/antlr/v4/runtime/try$for;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/antlr/v4/runtime/try$for;->BYTE:Lorg/antlr/v4/runtime/try$for;

    .line 2
    new-instance v1, Lorg/antlr/v4/runtime/try$for;

    const-string v3, "CHAR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/antlr/v4/runtime/try$for;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/antlr/v4/runtime/try$for;->CHAR:Lorg/antlr/v4/runtime/try$for;

    .line 3
    new-instance v3, Lorg/antlr/v4/runtime/try$for;

    const-string v5, "INT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/antlr/v4/runtime/try$for;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/antlr/v4/runtime/try$for;->INT:Lorg/antlr/v4/runtime/try$for;

    const/4 v5, 0x3

    new-array v5, v5, [Lorg/antlr/v4/runtime/try$for;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lorg/antlr/v4/runtime/try$for;->do:[Lorg/antlr/v4/runtime/try$for;

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

.method public static valueOf(Ljava/lang/String;)Lorg/antlr/v4/runtime/try$for;
    .locals 1

    .line 1
    const-class v0, Lorg/antlr/v4/runtime/try$for;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/antlr/v4/runtime/try$for;

    return-object p0
.end method

.method public static values()[Lorg/antlr/v4/runtime/try$for;
    .locals 1

    .line 1
    sget-object v0, Lorg/antlr/v4/runtime/try$for;->do:[Lorg/antlr/v4/runtime/try$for;

    invoke-virtual {v0}, [Lorg/antlr/v4/runtime/try$for;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/antlr/v4/runtime/try$for;

    return-object v0
.end method
