.class public final Lcom/google/android/material/shape/ShapeAppearanceModel$if;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/shape/ShapeAppearanceModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "if"
.end annotation


# instance fields
.field private break:Landroid/support/v4/a60;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private case:Lcom/google/android/material/shape/CornerSize;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private catch:Landroid/support/v4/a60;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private class:Landroid/support/v4/a60;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private do:Landroid/support/v4/yr;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private else:Lcom/google/android/material/shape/CornerSize;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private for:Landroid/support/v4/yr;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private goto:Lcom/google/android/material/shape/CornerSize;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private if:Landroid/support/v4/yr;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private new:Landroid/support/v4/yr;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private this:Landroid/support/v4/a60;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private try:Lcom/google/android/material/shape/CornerSize;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Landroid/support/v4/tx0;->if()Landroid/support/v4/yr;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$if;->do:Landroid/support/v4/yr;

    .line 3
    invoke-static {}, Landroid/support/v4/tx0;->if()Landroid/support/v4/yr;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$if;->if:Landroid/support/v4/yr;

    .line 4
    invoke-static {}, Landroid/support/v4/tx0;->if()Landroid/support/v4/yr;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$if;->for:Landroid/support/v4/yr;

    .line 5
    invoke-static {}, Landroid/support/v4/tx0;->if()Landroid/support/v4/yr;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$if;->new:Landroid/support/v4/yr;

    .line 6
    new-instance v0, Landroid/support/v4/private;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v4/private;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$if;->try:Lcom/google/android/material/shape/CornerSize;

    .line 7
    new-instance v0, Landroid/support/v4/private;

    invoke-direct {v0, v1}, Landroid/support/v4/private;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$if;->case:Lcom/google/android/material/shape/CornerSize;

    .line 8
    new-instance v0, Landroid/support/v4/private;

    invoke-direct {v0, v1}, Landroid/support/v4/private;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$if;->else:Lcom/google/android/material/shape/CornerSize;

    .line 9
    new-instance v0, Landroid/support/v4/private;

    invoke-direct {v0, v1}, Landroid/support/v4/private;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$if;->goto:Lcom/google/android/material/shape/CornerSize;

    .line 10
    invoke-static {}, Landroid/support/v4/tx0;->for()Landroid/support/v4/a60;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$if;->this:Landroid/support/v4/a60;

    .line 11
    invoke-static {}, Landroid/support/v4/tx0;->for()Landroid/support/v4/a60;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$if;->break:Landroid/support/v4/a60;

    .line 12
    invoke-static {}, Landroid/support/v4/tx0;->for()Landroid/support/v4/a60;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$if;->catch:Landroid/support/v4/a60;

    .line 13
    invoke-static {}, Landroid/support/v4/tx0;->for()Landroid/support/v4/a60;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$if;->class:Landroid/support/v4/a60;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V
    .locals 2
    .param p1    # Lcom/google/android/material/shape/ShapeAppearanceModel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-static {}, Landroid/support/v4/tx0;->if()Landroid/support/v4/yr;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$if;->do:Landroid/support/v4/yr;

    .line 16
    invoke-static {}, Landroid/support/v4/tx0;->if()Landroid/support/v4/yr;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$if;->if:Landroid/support/v4/yr;

    .line 17
    invoke-static {}, Landroid/support/v4/tx0;->if()Landroid/support/v4/yr;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$if;->for:Landroid/support/v4/yr;

    .line 18
    invoke-static {}, Landroid/support/v4/tx0;->if()Landroid/support/v4/yr;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$if;->new:Landroid/support/v4/yr;

    .line 19
    new-instance v0, Landroid/support/v4/private;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v4/private;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$if;->try:Lcom/google/android/material/shape/CornerSize;

    .line 20
    new-instance v0, Landroid/support/v4/private;

    invoke-direct {v0, v1}, Landroid/support/v4/private;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$if;->case:Lcom/google/android/material/shape/CornerSize;

    .line 21
    new-instance v0, Landroid/support/v4/private;

    invoke-direct {v0, v1}, Landroid/support/v4/private;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$if;->else:Lcom/google/android/material/shape/CornerSize;

    .line 22
    new-instance v0, Landroid/support/v4/private;

    invoke-direct {v0, v1}, Landroid/support/v4/private;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$if;->goto:Lcom/google/android/material/shape/CornerSize;

    .line 23
    invoke-static {}, Landroid/support/v4/tx0;->for()Landroid/support/v4/a60;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$if;->this:Landroid/support/v4/a60;

    .line 24
    invoke-static {}, Landroid/support/v4/tx0;->for()Landroid/support/v4/a60;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$if;->break:Landroid/support/v4/a60;

    .line 25
    invoke-static {}, Landroid/support/v4/tx0;->for()Landroid/support/v4/a60;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$if;->catch:Landroid/support/v4/a60;

    .line 26
    invoke-static {}, Landroid/support/v4/tx0;->for()Landroid/support/v4/a60;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$if;->class:Landroid/support/v4/a60;

    .line 27
    iget-object v0, p1, Lcom/google/android/material/shape/ShapeAppearanceModel;->do:Landroid/support/v4/yr;

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$if;->do:Landroid/support/v4/yr;

    .line 28
    iget-object v0, p1, Lcom/google/android/material/shape/ShapeAppearanceModel;->if:Landroid/support/v4/yr;

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$if;->if:Landroid/support/v4/yr;

    .line 29
    iget-object v0, p1, Lcom/google/android/material/shape/ShapeAppearanceModel;->for:Landroid/support/v4/yr;

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$if;->for:Landroid/support/v4/yr;

    .line 30
    iget-object v0, p1, Lcom/google/android/material/shape/ShapeAppearanceModel;->new:Landroid/support/v4/yr;

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$if;->new:Landroid/support/v4/yr;

    .line 31
    iget-object v0, p1, Lcom/google/android/material/shape/ShapeAppearanceModel;->try:Lcom/google/android/material/shape/CornerSize;

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$if;->try:Lcom/google/android/material/shape/CornerSize;

    .line 32
    iget-object v0, p1, Lcom/google/android/material/shape/ShapeAppearanceModel;->case:Lcom/google/android/material/shape/CornerSize;

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$if;->case:Lcom/google/android/material/shape/CornerSize;

    .line 33
    iget-object v0, p1, Lcom/google/android/material/shape/ShapeAppearanceModel;->else:Lcom/google/android/material/shape/CornerSize;

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$if;->else:Lcom/google/android/material/shape/CornerSize;

    .line 34
    iget-object v0, p1, Lcom/google/android/material/shape/ShapeAppearanceModel;->goto:Lcom/google/android/material/shape/CornerSize;

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$if;->goto:Lcom/google/android/material/shape/CornerSize;

    .line 35
    iget-object v0, p1, Lcom/google/android/material/shape/ShapeAppearanceModel;->this:Landroid/support/v4/a60;

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$if;->this:Landroid/support/v4/a60;

    .line 36
    iget-object v0, p1, Lcom/google/android/material/shape/ShapeAppearanceModel;->break:Landroid/support/v4/a60;

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$if;->break:Landroid/support/v4/a60;

    .line 37
    iget-object v0, p1, Lcom/google/android/material/shape/ShapeAppearanceModel;->catch:Landroid/support/v4/a60;

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$if;->catch:Landroid/support/v4/a60;

    .line 38
    iget-object p1, p1, Lcom/google/android/material/shape/ShapeAppearanceModel;->class:Landroid/support/v4/a60;

    iput-object p1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$if;->class:Landroid/support/v4/a60;

    return-void
.end method

.method public static synthetic break(Lcom/google/android/material/shape/ShapeAppearanceModel$if;)Lcom/google/android/material/shape/CornerSize;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$if;->else:Lcom/google/android/material/shape/CornerSize;

    return-object p0
.end method

.method public static synthetic case(Lcom/google/android/material/shape/ShapeAppearanceModel$if;)Landroid/support/v4/yr;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$if;->for:Landroid/support/v4/yr;

    return-object p0
.end method

.method public static synthetic catch(Lcom/google/android/material/shape/ShapeAppearanceModel$if;)Lcom/google/android/material/shape/CornerSize;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$if;->goto:Lcom/google/android/material/shape/CornerSize;

    return-object p0
.end method

.method public static synthetic class(Lcom/google/android/material/shape/ShapeAppearanceModel$if;)Landroid/support/v4/a60;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$if;->this:Landroid/support/v4/a60;

    return-object p0
.end method

.method public static synthetic do(Lcom/google/android/material/shape/ShapeAppearanceModel$if;)Landroid/support/v4/yr;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$if;->do:Landroid/support/v4/yr;

    return-object p0
.end method

.method public static synthetic else(Lcom/google/android/material/shape/ShapeAppearanceModel$if;)Landroid/support/v4/yr;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$if;->new:Landroid/support/v4/yr;

    return-object p0
.end method

.method private static final(Landroid/support/v4/yr;)F
    .locals 1

    .line 1
    instance-of v0, p0, Landroid/support/v4/ro1;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Landroid/support/v4/ro1;

    iget p0, p0, Landroid/support/v4/ro1;->do:F

    return p0

    .line 3
    :cond_0
    instance-of v0, p0, Landroid/support/v4/it;

    if-eqz v0, :cond_1

    .line 4
    check-cast p0, Landroid/support/v4/it;

    iget p0, p0, Landroid/support/v4/it;->do:F

    return p0

    :cond_1
    const/high16 p0, -0x40800000    # -1.0f

    return p0
.end method

.method public static synthetic for(Lcom/google/android/material/shape/ShapeAppearanceModel$if;)Landroid/support/v4/a60;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$if;->catch:Landroid/support/v4/a60;

    return-object p0
.end method

.method public static synthetic goto(Lcom/google/android/material/shape/ShapeAppearanceModel$if;)Lcom/google/android/material/shape/CornerSize;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$if;->try:Lcom/google/android/material/shape/CornerSize;

    return-object p0
.end method

.method public static synthetic if(Lcom/google/android/material/shape/ShapeAppearanceModel$if;)Landroid/support/v4/a60;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$if;->break:Landroid/support/v4/a60;

    return-object p0
.end method

.method public static synthetic new(Lcom/google/android/material/shape/ShapeAppearanceModel$if;)Landroid/support/v4/a60;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$if;->class:Landroid/support/v4/a60;

    return-object p0
.end method

.method public static synthetic this(Lcom/google/android/material/shape/ShapeAppearanceModel$if;)Lcom/google/android/material/shape/CornerSize;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$if;->case:Lcom/google/android/material/shape/CornerSize;

    return-object p0
.end method

.method public static synthetic try(Lcom/google/android/material/shape/ShapeAppearanceModel$if;)Landroid/support/v4/yr;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$if;->if:Landroid/support/v4/yr;

    return-object p0
.end method


# virtual methods
.method public a(ILcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$if;
    .locals 0
    .param p2    # Lcom/google/android/material/shape/CornerSize;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/support/v4/tx0;->do(I)Landroid/support/v4/yr;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$if;->b(Landroid/support/v4/yr;)Lcom/google/android/material/shape/ShapeAppearanceModel$if;

    move-result-object p1

    .line 2
    invoke-virtual {p1, p2}, Lcom/google/android/material/shape/ShapeAppearanceModel$if;->d(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$if;

    move-result-object p1

    return-object p1
.end method

.method public abstract(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$if;
    .locals 0
    .param p1    # Lcom/google/android/material/shape/CornerSize;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$if;->else:Lcom/google/android/material/shape/CornerSize;

    return-object p0
.end method

.method public b(Landroid/support/v4/yr;)Lcom/google/android/material/shape/ShapeAppearanceModel$if;
    .locals 1
    .param p1    # Landroid/support/v4/yr;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$if;->if:Landroid/support/v4/yr;

    .line 2
    invoke-static {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$if;->final(Landroid/support/v4/yr;)F

    move-result p1

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$if;->c(F)Lcom/google/android/material/shape/ShapeAppearanceModel$if;

    :cond_0
    return-object p0
.end method

.method public c(F)Lcom/google/android/material/shape/ShapeAppearanceModel$if;
    .locals 1
    .param p1    # F
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Landroid/support/v4/private;

    invoke-direct {v0, p1}, Landroid/support/v4/private;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$if;->case:Lcom/google/android/material/shape/CornerSize;

    return-object p0
.end method

.method public const()Lcom/google/android/material/shape/ShapeAppearanceModel;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/material/shape/ShapeAppearanceModel;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/material/shape/ShapeAppearanceModel;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel$if;Lcom/google/android/material/shape/ShapeAppearanceModel$do;)V

    return-object v0
.end method

.method public continue(Landroid/support/v4/a60;)Lcom/google/android/material/shape/ShapeAppearanceModel$if;
    .locals 0
    .param p1    # Landroid/support/v4/a60;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$if;->class:Landroid/support/v4/a60;

    return-object p0
.end method

.method public d(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$if;
    .locals 0
    .param p1    # Lcom/google/android/material/shape/CornerSize;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$if;->case:Lcom/google/android/material/shape/CornerSize;

    return-object p0
.end method

.method public default(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$if;
    .locals 0
    .param p1    # Lcom/google/android/material/shape/CornerSize;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$if;->goto:Lcom/google/android/material/shape/CornerSize;

    return-object p0
.end method

.method public extends(IF)Lcom/google/android/material/shape/ShapeAppearanceModel$if;
    .locals 0
    .param p2    # F
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/support/v4/tx0;->do(I)Landroid/support/v4/yr;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$if;->package(Landroid/support/v4/yr;)Lcom/google/android/material/shape/ShapeAppearanceModel$if;

    move-result-object p1

    .line 2
    invoke-virtual {p1, p2}, Lcom/google/android/material/shape/ShapeAppearanceModel$if;->private(F)Lcom/google/android/material/shape/ShapeAppearanceModel$if;

    move-result-object p1

    return-object p1
.end method

.method public finally(ILcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$if;
    .locals 0
    .param p2    # Lcom/google/android/material/shape/CornerSize;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/support/v4/tx0;->do(I)Landroid/support/v4/yr;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$if;->package(Landroid/support/v4/yr;)Lcom/google/android/material/shape/ShapeAppearanceModel$if;

    move-result-object p1

    .line 2
    invoke-virtual {p1, p2}, Lcom/google/android/material/shape/ShapeAppearanceModel$if;->abstract(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$if;

    move-result-object p1

    return-object p1
.end method

.method public implements(F)Lcom/google/android/material/shape/ShapeAppearanceModel$if;
    .locals 1
    .param p1    # F
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Landroid/support/v4/private;

    invoke-direct {v0, p1}, Landroid/support/v4/private;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$if;->try:Lcom/google/android/material/shape/CornerSize;

    return-object p0
.end method

.method public import(Landroid/support/v4/yr;)Lcom/google/android/material/shape/ShapeAppearanceModel$if;
    .locals 1
    .param p1    # Landroid/support/v4/yr;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$if;->transient(Landroid/support/v4/yr;)Lcom/google/android/material/shape/ShapeAppearanceModel$if;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$if;->b(Landroid/support/v4/yr;)Lcom/google/android/material/shape/ShapeAppearanceModel$if;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$if;->package(Landroid/support/v4/yr;)Lcom/google/android/material/shape/ShapeAppearanceModel$if;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$if;->switch(Landroid/support/v4/yr;)Lcom/google/android/material/shape/ShapeAppearanceModel$if;

    move-result-object p1

    return-object p1
.end method

.method public instanceof(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$if;
    .locals 0
    .param p1    # Lcom/google/android/material/shape/CornerSize;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$if;->try:Lcom/google/android/material/shape/CornerSize;

    return-object p0
.end method

.method public interface(IF)Lcom/google/android/material/shape/ShapeAppearanceModel$if;
    .locals 0
    .param p2    # F
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/support/v4/tx0;->do(I)Landroid/support/v4/yr;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$if;->transient(Landroid/support/v4/yr;)Lcom/google/android/material/shape/ShapeAppearanceModel$if;

    move-result-object p1

    .line 2
    invoke-virtual {p1, p2}, Lcom/google/android/material/shape/ShapeAppearanceModel$if;->implements(F)Lcom/google/android/material/shape/ShapeAppearanceModel$if;

    move-result-object p1

    return-object p1
.end method

.method public native(Landroid/support/v4/a60;)Lcom/google/android/material/shape/ShapeAppearanceModel$if;
    .locals 1
    .param p1    # Landroid/support/v4/a60;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$if;->continue(Landroid/support/v4/a60;)Lcom/google/android/material/shape/ShapeAppearanceModel$if;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$if;->volatile(Landroid/support/v4/a60;)Lcom/google/android/material/shape/ShapeAppearanceModel$if;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$if;->strictfp(Landroid/support/v4/a60;)Lcom/google/android/material/shape/ShapeAppearanceModel$if;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$if;->public(Landroid/support/v4/a60;)Lcom/google/android/material/shape/ShapeAppearanceModel$if;

    move-result-object p1

    return-object p1
.end method

.method public package(Landroid/support/v4/yr;)Lcom/google/android/material/shape/ShapeAppearanceModel$if;
    .locals 1
    .param p1    # Landroid/support/v4/yr;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$if;->for:Landroid/support/v4/yr;

    .line 2
    invoke-static {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$if;->final(Landroid/support/v4/yr;)F

    move-result p1

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$if;->private(F)Lcom/google/android/material/shape/ShapeAppearanceModel$if;

    :cond_0
    return-object p0
.end method

.method public private(F)Lcom/google/android/material/shape/ShapeAppearanceModel$if;
    .locals 1
    .param p1    # F
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Landroid/support/v4/private;

    invoke-direct {v0, p1}, Landroid/support/v4/private;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$if;->else:Lcom/google/android/material/shape/CornerSize;

    return-object p0
.end method

.method public protected(ILcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$if;
    .locals 0
    .param p2    # Lcom/google/android/material/shape/CornerSize;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/support/v4/tx0;->do(I)Landroid/support/v4/yr;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$if;->transient(Landroid/support/v4/yr;)Lcom/google/android/material/shape/ShapeAppearanceModel$if;

    move-result-object p1

    .line 2
    invoke-virtual {p1, p2}, Lcom/google/android/material/shape/ShapeAppearanceModel$if;->instanceof(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$if;

    move-result-object p1

    return-object p1
.end method

.method public public(Landroid/support/v4/a60;)Lcom/google/android/material/shape/ShapeAppearanceModel$if;
    .locals 0
    .param p1    # Landroid/support/v4/a60;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$if;->catch:Landroid/support/v4/a60;

    return-object p0
.end method

.method public return(IF)Lcom/google/android/material/shape/ShapeAppearanceModel$if;
    .locals 0
    .param p2    # F
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/support/v4/tx0;->do(I)Landroid/support/v4/yr;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$if;->switch(Landroid/support/v4/yr;)Lcom/google/android/material/shape/ShapeAppearanceModel$if;

    move-result-object p1

    .line 2
    invoke-virtual {p1, p2}, Lcom/google/android/material/shape/ShapeAppearanceModel$if;->throws(F)Lcom/google/android/material/shape/ShapeAppearanceModel$if;

    move-result-object p1

    return-object p1
.end method

.method public static(ILcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$if;
    .locals 0
    .param p2    # Lcom/google/android/material/shape/CornerSize;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/support/v4/tx0;->do(I)Landroid/support/v4/yr;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$if;->switch(Landroid/support/v4/yr;)Lcom/google/android/material/shape/ShapeAppearanceModel$if;

    move-result-object p1

    .line 2
    invoke-virtual {p1, p2}, Lcom/google/android/material/shape/ShapeAppearanceModel$if;->default(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$if;

    move-result-object p1

    return-object p1
.end method

.method public strictfp(Landroid/support/v4/a60;)Lcom/google/android/material/shape/ShapeAppearanceModel$if;
    .locals 0
    .param p1    # Landroid/support/v4/a60;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$if;->break:Landroid/support/v4/a60;

    return-object p0
.end method

.method public super(F)Lcom/google/android/material/shape/ShapeAppearanceModel$if;
    .locals 1
    .param p1    # F
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$if;->implements(F)Lcom/google/android/material/shape/ShapeAppearanceModel$if;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$if;->c(F)Lcom/google/android/material/shape/ShapeAppearanceModel$if;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$if;->private(F)Lcom/google/android/material/shape/ShapeAppearanceModel$if;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$if;->throws(F)Lcom/google/android/material/shape/ShapeAppearanceModel$if;

    move-result-object p1

    return-object p1
.end method

.method public switch(Landroid/support/v4/yr;)Lcom/google/android/material/shape/ShapeAppearanceModel$if;
    .locals 1
    .param p1    # Landroid/support/v4/yr;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$if;->new:Landroid/support/v4/yr;

    .line 2
    invoke-static {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$if;->final(Landroid/support/v4/yr;)F

    move-result p1

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$if;->throws(F)Lcom/google/android/material/shape/ShapeAppearanceModel$if;

    :cond_0
    return-object p0
.end method

.method public synchronized(IF)Lcom/google/android/material/shape/ShapeAppearanceModel$if;
    .locals 0
    .param p2    # F
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/support/v4/tx0;->do(I)Landroid/support/v4/yr;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$if;->b(Landroid/support/v4/yr;)Lcom/google/android/material/shape/ShapeAppearanceModel$if;

    move-result-object p1

    .line 2
    invoke-virtual {p1, p2}, Lcom/google/android/material/shape/ShapeAppearanceModel$if;->c(F)Lcom/google/android/material/shape/ShapeAppearanceModel$if;

    move-result-object p1

    return-object p1
.end method

.method public throw(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$if;
    .locals 1
    .param p1    # Lcom/google/android/material/shape/CornerSize;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$if;->instanceof(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$if;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$if;->d(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$if;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$if;->abstract(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$if;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$if;->default(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$if;

    move-result-object p1

    return-object p1
.end method

.method public throws(F)Lcom/google/android/material/shape/ShapeAppearanceModel$if;
    .locals 1
    .param p1    # F
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Landroid/support/v4/private;

    invoke-direct {v0, p1}, Landroid/support/v4/private;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$if;->goto:Lcom/google/android/material/shape/CornerSize;

    return-object p0
.end method

.method public transient(Landroid/support/v4/yr;)Lcom/google/android/material/shape/ShapeAppearanceModel$if;
    .locals 1
    .param p1    # Landroid/support/v4/yr;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$if;->do:Landroid/support/v4/yr;

    .line 2
    invoke-static {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$if;->final(Landroid/support/v4/yr;)F

    move-result p1

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$if;->implements(F)Lcom/google/android/material/shape/ShapeAppearanceModel$if;

    :cond_0
    return-object p0
.end method

.method public volatile(Landroid/support/v4/a60;)Lcom/google/android/material/shape/ShapeAppearanceModel$if;
    .locals 0
    .param p1    # Landroid/support/v4/a60;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel$if;->this:Landroid/support/v4/a60;

    return-object p0
.end method

.method public while(IF)Lcom/google/android/material/shape/ShapeAppearanceModel$if;
    .locals 0
    .param p2    # F
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/support/v4/tx0;->do(I)Landroid/support/v4/yr;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$if;->import(Landroid/support/v4/yr;)Lcom/google/android/material/shape/ShapeAppearanceModel$if;

    move-result-object p1

    .line 2
    invoke-virtual {p1, p2}, Lcom/google/android/material/shape/ShapeAppearanceModel$if;->super(F)Lcom/google/android/material/shape/ShapeAppearanceModel$if;

    move-result-object p1

    return-object p1
.end method
