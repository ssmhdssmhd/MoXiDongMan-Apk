.class public Landroid/support/v4/a3;
.super Landroid/support/v4/ht;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/ht<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final case:Landroid/widget/RemoteViews;

.field private final else:Landroid/content/Context;

.field private final goto:I

.field private final new:[I

.field private final try:Landroid/content/ComponentName;


# direct methods
.method public constructor <init>(Landroid/content/Context;IIILandroid/widget/RemoteViews;Landroid/content/ComponentName;)V
    .locals 0

    .line 10
    invoke-direct {p0, p2, p3}, Landroid/support/v4/ht;-><init>(II)V

    const-string p2, "Context can not be null!"

    .line 11
    invoke-static {p1, p2}, Landroid/support/v4/cf1;->try(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Landroid/support/v4/a3;->else:Landroid/content/Context;

    const-string p1, "RemoteViews object can not be null!"

    .line 12
    invoke-static {p5, p1}, Landroid/support/v4/cf1;->try(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/RemoteViews;

    iput-object p1, p0, Landroid/support/v4/a3;->case:Landroid/widget/RemoteViews;

    const-string p1, "ComponentName can not be null!"

    .line 13
    invoke-static {p6, p1}, Landroid/support/v4/cf1;->try(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    iput-object p1, p0, Landroid/support/v4/a3;->try:Landroid/content/ComponentName;

    .line 14
    iput p4, p0, Landroid/support/v4/a3;->goto:I

    const/4 p1, 0x0

    .line 15
    iput-object p1, p0, Landroid/support/v4/a3;->new:[I

    return-void
.end method

.method public varargs constructor <init>(Landroid/content/Context;IIILandroid/widget/RemoteViews;[I)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p3}, Landroid/support/v4/ht;-><init>(II)V

    .line 2
    array-length p2, p6

    if-eqz p2, :cond_0

    const-string p2, "Context can not be null!"

    .line 3
    invoke-static {p1, p2}, Landroid/support/v4/cf1;->try(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Landroid/support/v4/a3;->else:Landroid/content/Context;

    const-string p1, "RemoteViews object can not be null!"

    .line 4
    invoke-static {p5, p1}, Landroid/support/v4/cf1;->try(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/RemoteViews;

    iput-object p1, p0, Landroid/support/v4/a3;->case:Landroid/widget/RemoteViews;

    const-string p1, "WidgetIds can not be null!"

    .line 5
    invoke-static {p6, p1}, Landroid/support/v4/cf1;->try(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    iput-object p1, p0, Landroid/support/v4/a3;->new:[I

    .line 6
    iput p4, p0, Landroid/support/v4/a3;->goto:I

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Landroid/support/v4/a3;->try:Landroid/content/ComponentName;

    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "WidgetIds must have length > 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/widget/RemoteViews;Landroid/content/ComponentName;)V
    .locals 7

    const/high16 v2, -0x80000000

    const/high16 v3, -0x80000000

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 16
    invoke-direct/range {v0 .. v6}, Landroid/support/v4/a3;-><init>(Landroid/content/Context;IIILandroid/widget/RemoteViews;Landroid/content/ComponentName;)V

    return-void
.end method

.method public varargs constructor <init>(Landroid/content/Context;ILandroid/widget/RemoteViews;[I)V
    .locals 7

    const/high16 v2, -0x80000000

    const/high16 v3, -0x80000000

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 9
    invoke-direct/range {v0 .. v6}, Landroid/support/v4/a3;-><init>(Landroid/content/Context;IIILandroid/widget/RemoteViews;[I)V

    return-void
.end method

.method private for()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v4/a3;->else:Landroid/content/Context;

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 2
    iget-object v1, p0, Landroid/support/v4/a3;->try:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    .line 3
    iget-object v2, p0, Landroid/support/v4/a3;->case:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v1, v2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Landroid/support/v4/a3;->new:[I

    iget-object v2, p0, Landroid/support/v4/a3;->case:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v1, v2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget([ILandroid/widget/RemoteViews;)V

    :goto_0
    return-void
.end method

.method private if(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroid/support/v4/a3;->case:Landroid/widget/RemoteViews;

    iget v1, p0, Landroid/support/v4/a3;->goto:I

    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 2
    invoke-direct {p0}, Landroid/support/v4/a3;->for()V

    return-void
.end method


# virtual methods
.method public do(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 0
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/request/transition/Transition;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lcom/bumptech/glide/request/transition/Transition<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroid/support/v4/a3;->if(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onLoadCleared(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 p1, 0x0

    .line 1
    invoke-direct {p0, p1}, Landroid/support/v4/a3;->if(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/request/transition/Transition;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/a3;->do(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/transition/Transition;)V

    return-void
.end method
