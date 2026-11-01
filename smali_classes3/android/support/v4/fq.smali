.class public final enum Landroid/support/v4/fq;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/support/v4/fq;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum FAST:Landroid/support/v4/fq;

.field public static final enum FASTEST:Landroid/support/v4/fq;

.field public static final enum MAXIMUM:Landroid/support/v4/fq;

.field public static final enum NORMAL:Landroid/support/v4/fq;

.field private static final synthetic do:[Landroid/support/v4/fq;


# instance fields
.field private level:I


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Landroid/support/v4/fq;

    const-string v1, "FASTEST"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v4/fq;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/support/v4/fq;->FASTEST:Landroid/support/v4/fq;

    .line 2
    new-instance v1, Landroid/support/v4/fq;

    const-string v4, "FAST"

    const/4 v5, 0x3

    invoke-direct {v1, v4, v3, v5}, Landroid/support/v4/fq;-><init>(Ljava/lang/String;II)V

    sput-object v1, Landroid/support/v4/fq;->FAST:Landroid/support/v4/fq;

    .line 3
    new-instance v4, Landroid/support/v4/fq;

    const-string v6, "NORMAL"

    const/4 v7, 0x2

    const/4 v8, 0x5

    invoke-direct {v4, v6, v7, v8}, Landroid/support/v4/fq;-><init>(Ljava/lang/String;II)V

    sput-object v4, Landroid/support/v4/fq;->NORMAL:Landroid/support/v4/fq;

    .line 4
    new-instance v6, Landroid/support/v4/fq;

    const-string v8, "MAXIMUM"

    const/4 v9, 0x7

    invoke-direct {v6, v8, v5, v9}, Landroid/support/v4/fq;-><init>(Ljava/lang/String;II)V

    sput-object v6, Landroid/support/v4/fq;->MAXIMUM:Landroid/support/v4/fq;

    const/4 v8, 0x4

    new-array v8, v8, [Landroid/support/v4/fq;

    aput-object v0, v8, v2

    aput-object v1, v8, v3

    aput-object v4, v8, v7

    aput-object v6, v8, v5

    .line 5
    sput-object v8, Landroid/support/v4/fq;->do:[Landroid/support/v4/fq;

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

    .line 2
    iput p3, p0, Landroid/support/v4/fq;->level:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/support/v4/fq;
    .locals 1

    .line 1
    const-class v0, Landroid/support/v4/fq;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/support/v4/fq;

    return-object p0
.end method

.method public static values()[Landroid/support/v4/fq;
    .locals 1

    .line 1
    sget-object v0, Landroid/support/v4/fq;->do:[Landroid/support/v4/fq;

    invoke-virtual {v0}, [Landroid/support/v4/fq;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/v4/fq;

    return-object v0
.end method


# virtual methods
.method public getLevel()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/fq;->level:I

    return v0
.end method
