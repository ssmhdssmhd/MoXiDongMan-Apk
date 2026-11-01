.class public Lcom/qmuiteam/qmui/qqface/do$if;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qmuiteam/qmui/qqface/do;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "if"
.end annotation


# instance fields
.field private case:Landroid/support/v4/yh1;

.field private do:Lcom/qmuiteam/qmui/qqface/do$new;

.field private for:I

.field private if:Ljava/lang/CharSequence;

.field private new:Landroid/graphics/drawable/Drawable;

.field private try:Lcom/qmuiteam/qmui/qqface/do$for;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static do(I)Lcom/qmuiteam/qmui/qqface/do$if;
    .locals 2

    .line 1
    new-instance v0, Lcom/qmuiteam/qmui/qqface/do$if;

    invoke-direct {v0}, Lcom/qmuiteam/qmui/qqface/do$if;-><init>()V

    .line 2
    sget-object v1, Lcom/qmuiteam/qmui/qqface/do$new;->DRAWABLE:Lcom/qmuiteam/qmui/qqface/do$new;

    iput-object v1, v0, Lcom/qmuiteam/qmui/qqface/do$if;->do:Lcom/qmuiteam/qmui/qqface/do$new;

    .line 3
    iput p0, v0, Lcom/qmuiteam/qmui/qqface/do$if;->for:I

    return-object v0
.end method

.method public static for(Landroid/graphics/drawable/Drawable;)Lcom/qmuiteam/qmui/qqface/do$if;
    .locals 2

    .line 1
    new-instance v0, Lcom/qmuiteam/qmui/qqface/do$if;

    invoke-direct {v0}, Lcom/qmuiteam/qmui/qqface/do$if;-><init>()V

    .line 2
    sget-object v1, Lcom/qmuiteam/qmui/qqface/do$new;->SPECIAL_BOUNDS_DRAWABLE:Lcom/qmuiteam/qmui/qqface/do$new;

    iput-object v1, v0, Lcom/qmuiteam/qmui/qqface/do$if;->do:Lcom/qmuiteam/qmui/qqface/do$new;

    .line 3
    iput-object p0, v0, Lcom/qmuiteam/qmui/qqface/do$if;->new:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public static if()Lcom/qmuiteam/qmui/qqface/do$if;
    .locals 2

    .line 1
    new-instance v0, Lcom/qmuiteam/qmui/qqface/do$if;

    invoke-direct {v0}, Lcom/qmuiteam/qmui/qqface/do$if;-><init>()V

    .line 2
    sget-object v1, Lcom/qmuiteam/qmui/qqface/do$new;->NEXTLINE:Lcom/qmuiteam/qmui/qqface/do$new;

    iput-object v1, v0, Lcom/qmuiteam/qmui/qqface/do$if;->do:Lcom/qmuiteam/qmui/qqface/do$new;

    return-object v0
.end method

.method public static new(Ljava/lang/CharSequence;)Lcom/qmuiteam/qmui/qqface/do$if;
    .locals 2

    .line 1
    new-instance v0, Lcom/qmuiteam/qmui/qqface/do$if;

    invoke-direct {v0}, Lcom/qmuiteam/qmui/qqface/do$if;-><init>()V

    .line 2
    sget-object v1, Lcom/qmuiteam/qmui/qqface/do$new;->TEXT:Lcom/qmuiteam/qmui/qqface/do$new;

    iput-object v1, v0, Lcom/qmuiteam/qmui/qqface/do$if;->do:Lcom/qmuiteam/qmui/qqface/do$new;

    .line 3
    iput-object p0, v0, Lcom/qmuiteam/qmui/qqface/do$if;->if:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public static try(Ljava/lang/CharSequence;Landroid/support/v4/yh1;Lcom/qmuiteam/qmui/qqface/do;)Lcom/qmuiteam/qmui/qqface/do$if;
    .locals 4

    .line 1
    new-instance v0, Lcom/qmuiteam/qmui/qqface/do$if;

    invoke-direct {v0}, Lcom/qmuiteam/qmui/qqface/do$if;-><init>()V

    .line 2
    sget-object v1, Lcom/qmuiteam/qmui/qqface/do$new;->SPAN:Lcom/qmuiteam/qmui/qqface/do$new;

    iput-object v1, v0, Lcom/qmuiteam/qmui/qqface/do$if;->do:Lcom/qmuiteam/qmui/qqface/do$new;

    .line 3
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {p2, p0, v2, v1, v3}, Lcom/qmuiteam/qmui/qqface/do;->do(Lcom/qmuiteam/qmui/qqface/do;Ljava/lang/CharSequence;IIZ)Lcom/qmuiteam/qmui/qqface/do$for;

    move-result-object p0

    iput-object p0, v0, Lcom/qmuiteam/qmui/qqface/do$if;->try:Lcom/qmuiteam/qmui/qqface/do$for;

    .line 4
    iput-object p1, v0, Lcom/qmuiteam/qmui/qqface/do$if;->case:Landroid/support/v4/yh1;

    return-object v0
.end method


# virtual methods
.method public break()Landroid/support/v4/yh1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/qqface/do$if;->case:Landroid/support/v4/yh1;

    return-object v0
.end method

.method public case()Lcom/qmuiteam/qmui/qqface/do$for;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/qqface/do$if;->try:Lcom/qmuiteam/qmui/qqface/do$for;

    return-object v0
.end method

.method public catch()Lcom/qmuiteam/qmui/qqface/do$new;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/qqface/do$if;->do:Lcom/qmuiteam/qmui/qqface/do$new;

    return-object v0
.end method

.method public else()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/qqface/do$if;->for:I

    return v0
.end method

.method public goto()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/qqface/do$if;->new:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public this()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/qqface/do$if;->if:Ljava/lang/CharSequence;

    return-object v0
.end method
