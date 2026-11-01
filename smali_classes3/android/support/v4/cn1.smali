.class public Landroid/support/v4/cn1;
.super Lorg/chromium/net/native;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/cn1$do;
    }
.end annotation


# instance fields
.field private final case:Lorg/chromium/net/native$if;

.field private final else:I

.field private final goto:Lorg/chromium/net/static;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final new:Ljava/lang/String;

.field private final this:Landroid/support/v4/rs;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final try:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Collection;Lorg/chromium/net/native$if;ILorg/chromium/net/static;Landroid/support/v4/rs;)V
    .locals 0
    .param p5    # Lorg/chromium/net/static;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Landroid/support/v4/rs;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/chromium/net/native$if;",
            "I",
            "Lorg/chromium/net/static;",
            "Landroid/support/v4/rs;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/chromium/net/native;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/support/v4/cn1;->new:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Landroid/support/v4/cn1;->try:Ljava/util/Collection;

    .line 4
    iput-object p3, p0, Landroid/support/v4/cn1;->case:Lorg/chromium/net/native$if;

    .line 5
    iput p4, p0, Landroid/support/v4/cn1;->else:I

    .line 6
    iput-object p5, p0, Landroid/support/v4/cn1;->goto:Lorg/chromium/net/static;

    .line 7
    iput-object p6, p0, Landroid/support/v4/cn1;->this:Landroid/support/v4/rs;

    return-void
.end method


# virtual methods
.method public case()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/cn1;->new:Ljava/lang/String;

    return-object v0
.end method

.method public do()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/support/v4/cn1;->try:Ljava/util/Collection;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public for()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/cn1;->else:I

    return v0
.end method

.method public if()Landroid/support/v4/rs;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/support/v4/cn1;->this:Landroid/support/v4/rs;

    return-object v0
.end method

.method public new()Lorg/chromium/net/native$if;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/cn1;->case:Lorg/chromium/net/native$if;

    return-object v0
.end method

.method public try()Lorg/chromium/net/static;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/support/v4/cn1;->goto:Lorg/chromium/net/static;

    return-object v0
.end method
