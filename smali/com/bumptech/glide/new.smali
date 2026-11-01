.class public final enum Lcom/bumptech/glide/new;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bumptech/glide/new;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum HIGH:Lcom/bumptech/glide/new;

.field public static final enum LOW:Lcom/bumptech/glide/new;

.field public static final enum NORMAL:Lcom/bumptech/glide/new;

.field private static final synthetic do:[Lcom/bumptech/glide/new;


# instance fields
.field private final multiplier:F


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/bumptech/glide/new;

    const-string v1, "LOW"

    const/4 v2, 0x0

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-direct {v0, v1, v2, v3}, Lcom/bumptech/glide/new;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/bumptech/glide/new;->LOW:Lcom/bumptech/glide/new;

    .line 2
    new-instance v1, Lcom/bumptech/glide/new;

    const-string v3, "NORMAL"

    const/4 v4, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v3, v4, v5}, Lcom/bumptech/glide/new;-><init>(Ljava/lang/String;IF)V

    sput-object v1, Lcom/bumptech/glide/new;->NORMAL:Lcom/bumptech/glide/new;

    .line 3
    new-instance v3, Lcom/bumptech/glide/new;

    const-string v5, "HIGH"

    const/4 v6, 0x2

    const/high16 v7, 0x3fc00000    # 1.5f

    invoke-direct {v3, v5, v6, v7}, Lcom/bumptech/glide/new;-><init>(Ljava/lang/String;IF)V

    sput-object v3, Lcom/bumptech/glide/new;->HIGH:Lcom/bumptech/glide/new;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/bumptech/glide/new;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lcom/bumptech/glide/new;->do:[Lcom/bumptech/glide/new;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/bumptech/glide/new;->multiplier:F

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bumptech/glide/new;
    .locals 1

    .line 1
    const-class v0, Lcom/bumptech/glide/new;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/new;

    return-object p0
.end method

.method public static values()[Lcom/bumptech/glide/new;
    .locals 1

    .line 1
    sget-object v0, Lcom/bumptech/glide/new;->do:[Lcom/bumptech/glide/new;

    invoke-virtual {v0}, [Lcom/bumptech/glide/new;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bumptech/glide/new;

    return-object v0
.end method


# virtual methods
.method public getMultiplier()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/bumptech/glide/new;->multiplier:F

    return v0
.end method
