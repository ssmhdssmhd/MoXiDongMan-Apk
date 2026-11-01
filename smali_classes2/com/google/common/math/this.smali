.class public final Lcom/google/common/math/this;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/support/v4/li0;
.end annotation

.annotation build Landroid/support/v4/o8;
.end annotation


# instance fields
.field private final do:Lcom/google/common/math/class;

.field private for:D

.field private final if:Lcom/google/common/math/class;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/common/math/class;

    invoke-direct {v0}, Lcom/google/common/math/class;-><init>()V

    iput-object v0, p0, Lcom/google/common/math/this;->do:Lcom/google/common/math/class;

    .line 3
    new-instance v0, Lcom/google/common/math/class;

    invoke-direct {v0}, Lcom/google/common/math/class;-><init>()V

    iput-object v0, p0, Lcom/google/common/math/this;->if:Lcom/google/common/math/class;

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lcom/google/common/math/this;->for:D

    return-void
.end method

.method private static new(D)D
    .locals 6

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    move-wide v0, p0

    .line 1
    invoke-static/range {v0 .. v5}, Lcom/google/common/primitives/new;->case(DDD)D

    move-result-wide p0

    return-wide p0
.end method

.method private try(D)D
    .locals 3

    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    if-lez v2, :cond_0

    return-wide p1

    :cond_0
    const-wide/16 p1, 0x1

    return-wide p1
.end method


# virtual methods
.method public break()Lcom/google/common/math/goto;
    .locals 5

    .line 1
    new-instance v0, Lcom/google/common/math/goto;

    iget-object v1, p0, Lcom/google/common/math/this;->do:Lcom/google/common/math/class;

    invoke-virtual {v1}, Lcom/google/common/math/class;->native()Lcom/google/common/math/catch;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/math/this;->if:Lcom/google/common/math/class;

    invoke-virtual {v2}, Lcom/google/common/math/class;->native()Lcom/google/common/math/catch;

    move-result-object v2

    iget-wide v3, p0, Lcom/google/common/math/this;->for:D

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/common/math/goto;-><init>(Lcom/google/common/math/catch;Lcom/google/common/math/catch;D)V

    return-object v0
.end method

.method public final case()Lcom/google/common/math/try;
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/google/common/math/this;->for()J

    move-result-wide v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, 0x1

    cmp-long v6, v0, v4

    if-lez v6, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroid/support/v4/af1;->t(Z)V

    .line 2
    iget-wide v0, p0, Lcom/google/common/math/this;->for:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {}, Lcom/google/common/math/try;->do()Lcom/google/common/math/try;

    move-result-object v0

    return-object v0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/google/common/math/this;->do:Lcom/google/common/math/class;

    invoke-virtual {v0}, Lcom/google/common/math/class;->return()D

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmpl-double v6, v0, v4

    if-lez v6, :cond_3

    .line 5
    iget-object v2, p0, Lcom/google/common/math/this;->if:Lcom/google/common/math/class;

    invoke-virtual {v2}, Lcom/google/common/math/class;->return()D

    move-result-wide v2

    cmpl-double v6, v2, v4

    if-lez v6, :cond_2

    .line 6
    iget-object v2, p0, Lcom/google/common/math/this;->do:Lcom/google/common/math/class;

    invoke-virtual {v2}, Lcom/google/common/math/class;->class()D

    move-result-wide v2

    iget-object v4, p0, Lcom/google/common/math/this;->if:Lcom/google/common/math/class;

    invoke-virtual {v4}, Lcom/google/common/math/class;->class()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/google/common/math/try;->case(DD)Lcom/google/common/math/try$if;

    move-result-object v2

    iget-wide v3, p0, Lcom/google/common/math/this;->for:D

    div-double/2addr v3, v0

    .line 7
    invoke-virtual {v2, v3, v4}, Lcom/google/common/math/try$if;->if(D)Lcom/google/common/math/try;

    move-result-object v0

    return-object v0

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/google/common/math/this;->if:Lcom/google/common/math/class;

    invoke-virtual {v0}, Lcom/google/common/math/class;->class()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/common/math/try;->if(D)Lcom/google/common/math/try;

    move-result-object v0

    return-object v0

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/google/common/math/this;->if:Lcom/google/common/math/class;

    invoke-virtual {v0}, Lcom/google/common/math/class;->return()D

    move-result-wide v0

    cmpl-double v6, v0, v4

    if-lez v6, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_1
    invoke-static {v2}, Landroid/support/v4/af1;->t(Z)V

    .line 10
    iget-object v0, p0, Lcom/google/common/math/this;->do:Lcom/google/common/math/class;

    invoke-virtual {v0}, Lcom/google/common/math/class;->class()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/common/math/try;->this(D)Lcom/google/common/math/try;

    move-result-object v0

    return-object v0
.end method

.method public catch()Lcom/google/common/math/catch;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/math/this;->do:Lcom/google/common/math/class;

    invoke-virtual {v0}, Lcom/google/common/math/class;->native()Lcom/google/common/math/catch;

    move-result-object v0

    return-object v0
.end method

.method public class()Lcom/google/common/math/catch;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/math/this;->if:Lcom/google/common/math/class;

    invoke-virtual {v0}, Lcom/google/common/math/class;->native()Lcom/google/common/math/catch;

    move-result-object v0

    return-object v0
.end method

.method public do(DD)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/common/math/this;->do:Lcom/google/common/math/class;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/math/class;->do(D)V

    .line 2
    invoke-static {p1, p2}, Lcom/google/common/primitives/new;->final(D)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p3, p4}, Lcom/google/common/primitives/new;->final(D)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/common/math/this;->do:Lcom/google/common/math/class;

    invoke-virtual {v0}, Lcom/google/common/math/class;->break()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 4
    iget-wide v0, p0, Lcom/google/common/math/this;->for:D

    iget-object v2, p0, Lcom/google/common/math/this;->do:Lcom/google/common/math/class;

    invoke-virtual {v2}, Lcom/google/common/math/class;->class()D

    move-result-wide v2

    sub-double/2addr p1, v2

    iget-object v2, p0, Lcom/google/common/math/this;->if:Lcom/google/common/math/class;

    invoke-virtual {v2}, Lcom/google/common/math/class;->class()D

    move-result-wide v2

    sub-double v2, p3, v2

    mul-double p1, p1, v2

    add-double/2addr v0, p1

    iput-wide v0, p0, Lcom/google/common/math/this;->for:D

    goto :goto_0

    :cond_0
    const-wide/high16 p1, 0x7ff8000000000000L    # Double.NaN

    .line 5
    iput-wide p1, p0, Lcom/google/common/math/this;->for:D

    .line 6
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/google/common/math/this;->if:Lcom/google/common/math/class;

    invoke-virtual {p1, p3, p4}, Lcom/google/common/math/class;->do(D)V

    return-void
.end method

.method public final else()D
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/google/common/math/this;->for()J

    move-result-wide v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, 0x1

    cmp-long v6, v0, v4

    if-lez v6, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroid/support/v4/af1;->t(Z)V

    .line 2
    iget-wide v0, p0, Lcom/google/common/math/this;->for:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/google/common/math/this;->do:Lcom/google/common/math/class;

    invoke-virtual {v0}, Lcom/google/common/math/class;->return()D

    move-result-wide v0

    .line 4
    iget-object v4, p0, Lcom/google/common/math/this;->if:Lcom/google/common/math/class;

    invoke-virtual {v4}, Lcom/google/common/math/class;->return()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v8, v0, v6

    if-lez v8, :cond_2

    const/4 v8, 0x1

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    .line 5
    :goto_1
    invoke-static {v8}, Landroid/support/v4/af1;->t(Z)V

    cmpl-double v8, v4, v6

    if-lez v8, :cond_3

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    .line 6
    :goto_2
    invoke-static {v2}, Landroid/support/v4/af1;->t(Z)V

    mul-double v0, v0, v4

    .line 7
    invoke-direct {p0, v0, v1}, Lcom/google/common/math/this;->try(D)D

    move-result-wide v0

    .line 8
    iget-wide v2, p0, Lcom/google/common/math/this;->for:D

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    div-double/2addr v2, v0

    invoke-static {v2, v3}, Lcom/google/common/math/this;->new(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public for()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/math/this;->do:Lcom/google/common/math/class;

    invoke-virtual {v0}, Lcom/google/common/math/class;->break()J

    move-result-wide v0

    return-wide v0
.end method

.method public goto()D
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/common/math/this;->for()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroid/support/v4/af1;->t(Z)V

    .line 2
    iget-wide v0, p0, Lcom/google/common/math/this;->for:D

    invoke-virtual {p0}, Lcom/google/common/math/this;->for()J

    move-result-wide v2

    long-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public if(Lcom/google/common/math/goto;)V
    .locals 10

    .line 1
    invoke-virtual {p1}, Lcom/google/common/math/goto;->count()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/common/math/this;->do:Lcom/google/common/math/class;

    invoke-virtual {p1}, Lcom/google/common/math/goto;->xStats()Lcom/google/common/math/catch;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/math/class;->if(Lcom/google/common/math/catch;)V

    .line 3
    iget-object v0, p0, Lcom/google/common/math/this;->if:Lcom/google/common/math/class;

    invoke-virtual {v0}, Lcom/google/common/math/class;->break()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/google/common/math/goto;->sumOfProductsOfDeltas()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/math/this;->for:D

    goto :goto_0

    .line 5
    :cond_1
    iget-wide v0, p0, Lcom/google/common/math/this;->for:D

    .line 6
    invoke-virtual {p1}, Lcom/google/common/math/goto;->sumOfProductsOfDeltas()D

    move-result-wide v2

    .line 7
    invoke-virtual {p1}, Lcom/google/common/math/goto;->xStats()Lcom/google/common/math/catch;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/common/math/catch;->mean()D

    move-result-wide v4

    iget-object v6, p0, Lcom/google/common/math/this;->do:Lcom/google/common/math/class;

    invoke-virtual {v6}, Lcom/google/common/math/class;->class()D

    move-result-wide v6

    sub-double/2addr v4, v6

    .line 8
    invoke-virtual {p1}, Lcom/google/common/math/goto;->yStats()Lcom/google/common/math/catch;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/common/math/catch;->mean()D

    move-result-wide v6

    iget-object v8, p0, Lcom/google/common/math/this;->if:Lcom/google/common/math/class;

    invoke-virtual {v8}, Lcom/google/common/math/class;->class()D

    move-result-wide v8

    sub-double/2addr v6, v8

    mul-double v4, v4, v6

    .line 9
    invoke-virtual {p1}, Lcom/google/common/math/goto;->count()J

    move-result-wide v6

    long-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/math/this;->for:D

    .line 10
    :goto_0
    iget-object v0, p0, Lcom/google/common/math/this;->if:Lcom/google/common/math/class;

    invoke-virtual {p1}, Lcom/google/common/math/goto;->yStats()Lcom/google/common/math/catch;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/common/math/class;->if(Lcom/google/common/math/catch;)V

    return-void
.end method

.method public final this()D
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/google/common/math/this;->for()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroid/support/v4/af1;->t(Z)V

    .line 2
    iget-wide v0, p0, Lcom/google/common/math/this;->for:D

    invoke-virtual {p0}, Lcom/google/common/math/this;->for()J

    move-result-wide v4

    sub-long/2addr v4, v2

    long-to-double v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    return-wide v0
.end method
