.class public final enum Lkotlin/text/if;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/text/if$if;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkotlin/text/if;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/while;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u0008\n\u0002\u0008\u001d\u0008\u0086\u0001\u0018\u0000 \t2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\nB\u0011\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016j\u0002\u0008\u0017j\u0002\u0008\u0018j\u0002\u0008\u0019j\u0002\u0008\u001aj\u0002\u0008\u001bj\u0002\u0008\u001cj\u0002\u0008\u001dj\u0002\u0008\u001e\u00a8\u0006\u001f"
    }
    d2 = {
        "Lkotlin/text/if;",
        "",
        "",
        "value",
        "I",
        "getValue",
        "()I",
        "<init>",
        "(Ljava/lang/String;II)V",
        "Companion",
        "if",
        "UNDEFINED",
        "LEFT_TO_RIGHT",
        "RIGHT_TO_LEFT",
        "RIGHT_TO_LEFT_ARABIC",
        "EUROPEAN_NUMBER",
        "EUROPEAN_NUMBER_SEPARATOR",
        "EUROPEAN_NUMBER_TERMINATOR",
        "ARABIC_NUMBER",
        "COMMON_NUMBER_SEPARATOR",
        "NONSPACING_MARK",
        "BOUNDARY_NEUTRAL",
        "PARAGRAPH_SEPARATOR",
        "SEGMENT_SEPARATOR",
        "WHITESPACE",
        "OTHER_NEUTRALS",
        "LEFT_TO_RIGHT_EMBEDDING",
        "LEFT_TO_RIGHT_OVERRIDE",
        "RIGHT_TO_LEFT_EMBEDDING",
        "RIGHT_TO_LEFT_OVERRIDE",
        "POP_DIRECTIONAL_FORMAT",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# static fields
.field public static final enum ARABIC_NUMBER:Lkotlin/text/if;

.field public static final enum BOUNDARY_NEUTRAL:Lkotlin/text/if;

.field public static final enum COMMON_NUMBER_SEPARATOR:Lkotlin/text/if;

.field public static final Companion:Lkotlin/text/if$if;
    .annotation build Landroid/support/v4/m41;
    .end annotation
.end field

.field public static final enum EUROPEAN_NUMBER:Lkotlin/text/if;

.field public static final enum EUROPEAN_NUMBER_SEPARATOR:Lkotlin/text/if;

.field public static final enum EUROPEAN_NUMBER_TERMINATOR:Lkotlin/text/if;

.field public static final enum LEFT_TO_RIGHT:Lkotlin/text/if;

.field public static final enum LEFT_TO_RIGHT_EMBEDDING:Lkotlin/text/if;

.field public static final enum LEFT_TO_RIGHT_OVERRIDE:Lkotlin/text/if;

.field public static final enum NONSPACING_MARK:Lkotlin/text/if;

.field public static final enum OTHER_NEUTRALS:Lkotlin/text/if;

.field public static final enum PARAGRAPH_SEPARATOR:Lkotlin/text/if;

.field public static final enum POP_DIRECTIONAL_FORMAT:Lkotlin/text/if;

.field public static final enum RIGHT_TO_LEFT:Lkotlin/text/if;

.field public static final enum RIGHT_TO_LEFT_ARABIC:Lkotlin/text/if;

.field public static final enum RIGHT_TO_LEFT_EMBEDDING:Lkotlin/text/if;

.field public static final enum RIGHT_TO_LEFT_OVERRIDE:Lkotlin/text/if;

.field public static final enum SEGMENT_SEPARATOR:Lkotlin/text/if;

.field public static final enum UNDEFINED:Lkotlin/text/if;

.field public static final enum WHITESPACE:Lkotlin/text/if;

.field private static final synthetic do:[Lkotlin/text/if;

.field private static final if:Lkotlin/Lazy;


# instance fields
.field private final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x14

    new-array v0, v0, [Lkotlin/text/if;

    new-instance v1, Lkotlin/text/if;

    const-string v2, "UNDEFINED"

    const/4 v3, 0x0

    const/4 v4, -0x1

    .line 1
    invoke-direct {v1, v2, v3, v4}, Lkotlin/text/if;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lkotlin/text/if;->UNDEFINED:Lkotlin/text/if;

    aput-object v1, v0, v3

    new-instance v1, Lkotlin/text/if;

    const-string v2, "LEFT_TO_RIGHT"

    const/4 v4, 0x1

    .line 2
    invoke-direct {v1, v2, v4, v3}, Lkotlin/text/if;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lkotlin/text/if;->LEFT_TO_RIGHT:Lkotlin/text/if;

    aput-object v1, v0, v4

    new-instance v1, Lkotlin/text/if;

    const-string v2, "RIGHT_TO_LEFT"

    const/4 v3, 0x2

    .line 3
    invoke-direct {v1, v2, v3, v4}, Lkotlin/text/if;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lkotlin/text/if;->RIGHT_TO_LEFT:Lkotlin/text/if;

    aput-object v1, v0, v3

    new-instance v1, Lkotlin/text/if;

    const-string v2, "RIGHT_TO_LEFT_ARABIC"

    const/4 v4, 0x3

    .line 4
    invoke-direct {v1, v2, v4, v3}, Lkotlin/text/if;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lkotlin/text/if;->RIGHT_TO_LEFT_ARABIC:Lkotlin/text/if;

    aput-object v1, v0, v4

    new-instance v1, Lkotlin/text/if;

    const-string v2, "EUROPEAN_NUMBER"

    const/4 v3, 0x4

    .line 5
    invoke-direct {v1, v2, v3, v4}, Lkotlin/text/if;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lkotlin/text/if;->EUROPEAN_NUMBER:Lkotlin/text/if;

    aput-object v1, v0, v3

    new-instance v1, Lkotlin/text/if;

    const-string v2, "EUROPEAN_NUMBER_SEPARATOR"

    const/4 v4, 0x5

    .line 6
    invoke-direct {v1, v2, v4, v3}, Lkotlin/text/if;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lkotlin/text/if;->EUROPEAN_NUMBER_SEPARATOR:Lkotlin/text/if;

    aput-object v1, v0, v4

    new-instance v1, Lkotlin/text/if;

    const-string v2, "EUROPEAN_NUMBER_TERMINATOR"

    const/4 v3, 0x6

    .line 7
    invoke-direct {v1, v2, v3, v4}, Lkotlin/text/if;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lkotlin/text/if;->EUROPEAN_NUMBER_TERMINATOR:Lkotlin/text/if;

    aput-object v1, v0, v3

    new-instance v1, Lkotlin/text/if;

    const-string v2, "ARABIC_NUMBER"

    const/4 v4, 0x7

    .line 8
    invoke-direct {v1, v2, v4, v3}, Lkotlin/text/if;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lkotlin/text/if;->ARABIC_NUMBER:Lkotlin/text/if;

    aput-object v1, v0, v4

    new-instance v1, Lkotlin/text/if;

    const-string v2, "COMMON_NUMBER_SEPARATOR"

    const/16 v3, 0x8

    .line 9
    invoke-direct {v1, v2, v3, v4}, Lkotlin/text/if;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lkotlin/text/if;->COMMON_NUMBER_SEPARATOR:Lkotlin/text/if;

    aput-object v1, v0, v3

    new-instance v1, Lkotlin/text/if;

    const-string v2, "NONSPACING_MARK"

    const/16 v4, 0x9

    .line 10
    invoke-direct {v1, v2, v4, v3}, Lkotlin/text/if;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lkotlin/text/if;->NONSPACING_MARK:Lkotlin/text/if;

    aput-object v1, v0, v4

    new-instance v1, Lkotlin/text/if;

    const-string v2, "BOUNDARY_NEUTRAL"

    const/16 v3, 0xa

    .line 11
    invoke-direct {v1, v2, v3, v4}, Lkotlin/text/if;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lkotlin/text/if;->BOUNDARY_NEUTRAL:Lkotlin/text/if;

    aput-object v1, v0, v3

    new-instance v1, Lkotlin/text/if;

    const-string v2, "PARAGRAPH_SEPARATOR"

    const/16 v4, 0xb

    .line 12
    invoke-direct {v1, v2, v4, v3}, Lkotlin/text/if;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lkotlin/text/if;->PARAGRAPH_SEPARATOR:Lkotlin/text/if;

    aput-object v1, v0, v4

    new-instance v1, Lkotlin/text/if;

    const-string v2, "SEGMENT_SEPARATOR"

    const/16 v3, 0xc

    .line 13
    invoke-direct {v1, v2, v3, v4}, Lkotlin/text/if;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lkotlin/text/if;->SEGMENT_SEPARATOR:Lkotlin/text/if;

    aput-object v1, v0, v3

    new-instance v1, Lkotlin/text/if;

    const-string v2, "WHITESPACE"

    const/16 v4, 0xd

    .line 14
    invoke-direct {v1, v2, v4, v3}, Lkotlin/text/if;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lkotlin/text/if;->WHITESPACE:Lkotlin/text/if;

    aput-object v1, v0, v4

    new-instance v1, Lkotlin/text/if;

    const-string v2, "OTHER_NEUTRALS"

    const/16 v3, 0xe

    .line 15
    invoke-direct {v1, v2, v3, v4}, Lkotlin/text/if;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lkotlin/text/if;->OTHER_NEUTRALS:Lkotlin/text/if;

    aput-object v1, v0, v3

    new-instance v1, Lkotlin/text/if;

    const-string v2, "LEFT_TO_RIGHT_EMBEDDING"

    const/16 v4, 0xf

    .line 16
    invoke-direct {v1, v2, v4, v3}, Lkotlin/text/if;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lkotlin/text/if;->LEFT_TO_RIGHT_EMBEDDING:Lkotlin/text/if;

    aput-object v1, v0, v4

    new-instance v1, Lkotlin/text/if;

    const-string v2, "LEFT_TO_RIGHT_OVERRIDE"

    const/16 v3, 0x10

    .line 17
    invoke-direct {v1, v2, v3, v4}, Lkotlin/text/if;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lkotlin/text/if;->LEFT_TO_RIGHT_OVERRIDE:Lkotlin/text/if;

    aput-object v1, v0, v3

    new-instance v1, Lkotlin/text/if;

    const-string v2, "RIGHT_TO_LEFT_EMBEDDING"

    const/16 v4, 0x11

    .line 18
    invoke-direct {v1, v2, v4, v3}, Lkotlin/text/if;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lkotlin/text/if;->RIGHT_TO_LEFT_EMBEDDING:Lkotlin/text/if;

    aput-object v1, v0, v4

    new-instance v1, Lkotlin/text/if;

    const-string v2, "RIGHT_TO_LEFT_OVERRIDE"

    const/16 v3, 0x12

    .line 19
    invoke-direct {v1, v2, v3, v4}, Lkotlin/text/if;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lkotlin/text/if;->RIGHT_TO_LEFT_OVERRIDE:Lkotlin/text/if;

    aput-object v1, v0, v3

    new-instance v1, Lkotlin/text/if;

    const-string v2, "POP_DIRECTIONAL_FORMAT"

    const/16 v4, 0x13

    .line 20
    invoke-direct {v1, v2, v4, v3}, Lkotlin/text/if;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lkotlin/text/if;->POP_DIRECTIONAL_FORMAT:Lkotlin/text/if;

    aput-object v1, v0, v4

    sput-object v0, Lkotlin/text/if;->do:[Lkotlin/text/if;

    new-instance v0, Lkotlin/text/if$if;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/text/if$if;-><init>(Landroid/support/v4/rx;)V

    sput-object v0, Lkotlin/text/if;->Companion:Lkotlin/text/if$if;

    .line 21
    sget-object v0, Lkotlin/text/if$do;->INSTANCE:Lkotlin/text/if$do;

    invoke-static {v0}, Lkotlin/const;->for(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lkotlin/text/if;->if:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lkotlin/text/if;->value:I

    return-void
.end method

.method public static final synthetic access$getDirectionalityMap$cp()Lkotlin/Lazy;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/text/if;->if:Lkotlin/Lazy;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlin/text/if;
    .locals 1

    const-class v0, Lkotlin/text/if;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lkotlin/text/if;

    return-object p0
.end method

.method public static values()[Lkotlin/text/if;
    .locals 1

    sget-object v0, Lkotlin/text/if;->do:[Lkotlin/text/if;

    invoke-virtual {v0}, [Lkotlin/text/if;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlin/text/if;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lkotlin/text/if;->value:I

    return v0
.end method
