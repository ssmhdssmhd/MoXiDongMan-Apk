.class public final enum Lorg/antlr/v4/runtime/atn/do;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/antlr/v4/runtime/atn/do;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum LEXER:Lorg/antlr/v4/runtime/atn/do;

.field public static final enum PARSER:Lorg/antlr/v4/runtime/atn/do;

.field private static final synthetic do:[Lorg/antlr/v4/runtime/atn/do;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lorg/antlr/v4/runtime/atn/do;

    const-string v1, "LEXER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/antlr/v4/runtime/atn/do;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/antlr/v4/runtime/atn/do;->LEXER:Lorg/antlr/v4/runtime/atn/do;

    .line 2
    new-instance v1, Lorg/antlr/v4/runtime/atn/do;

    const-string v3, "PARSER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/antlr/v4/runtime/atn/do;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/antlr/v4/runtime/atn/do;->PARSER:Lorg/antlr/v4/runtime/atn/do;

    const/4 v3, 0x2

    new-array v3, v3, [Lorg/antlr/v4/runtime/atn/do;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lorg/antlr/v4/runtime/atn/do;->do:[Lorg/antlr/v4/runtime/atn/do;

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

.method public static valueOf(Ljava/lang/String;)Lorg/antlr/v4/runtime/atn/do;
    .locals 1

    .line 1
    const-class v0, Lorg/antlr/v4/runtime/atn/do;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/antlr/v4/runtime/atn/do;

    return-object p0
.end method

.method public static values()[Lorg/antlr/v4/runtime/atn/do;
    .locals 1

    .line 1
    sget-object v0, Lorg/antlr/v4/runtime/atn/do;->do:[Lorg/antlr/v4/runtime/atn/do;

    invoke-virtual {v0}, [Lorg/antlr/v4/runtime/atn/do;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/antlr/v4/runtime/atn/do;

    return-object v0
.end method
