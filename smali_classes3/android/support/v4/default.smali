.class public Landroid/support/v4/default;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final new:Landroid/support/v4/default;


# instance fields
.field private do:Z

.field private for:Z

.field private if:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/support/v4/default;

    invoke-direct {v0}, Landroid/support/v4/default;-><init>()V

    sput-object v0, Landroid/support/v4/default;->new:Landroid/support/v4/default;

    .line 2
    invoke-virtual {v0}, Landroid/support/v4/default;->try()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroid/support/v4/default;->if:Z

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Landroid/support/v4/default;->for:Z

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/default;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iget-boolean v0, p1, Landroid/support/v4/default;->if:Z

    iput-boolean v0, p0, Landroid/support/v4/default;->if:Z

    .line 6
    iget-boolean p1, p1, Landroid/support/v4/default;->for:Z

    iput-boolean p1, p0, Landroid/support/v4/default;->for:Z

    return-void
.end method

.method public static do()Landroid/support/v4/default;
    .locals 1

    .line 1
    sget-object v0, Landroid/support/v4/default;->new:Landroid/support/v4/default;

    return-object v0
.end method


# virtual methods
.method public final case(Z)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/default;->goto()V

    .line 2
    iput-boolean p1, p0, Landroid/support/v4/default;->for:Z

    return-void
.end method

.method public final else(Z)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/default;->goto()V

    .line 2
    iput-boolean p1, p0, Landroid/support/v4/default;->if:Z

    return-void
.end method

.method public final for()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/support/v4/default;->do:Z

    return v0
.end method

.method public goto()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/default;->for()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The object is read only."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final if()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/support/v4/default;->for:Z

    return v0
.end method

.method public final new()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/support/v4/default;->if:Z

    return v0
.end method

.method public final try()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroid/support/v4/default;->do:Z

    return-void
.end method
