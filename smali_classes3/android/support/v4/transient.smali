.class public abstract Landroid/support/v4/transient;
.super Landroid/support/v4/qk2;
.source "SourceFile"


# instance fields
.field private break:I

.field private case:J

.field private catch:I

.field private class:Ljava/lang/String;

.field private const:Z

.field private else:[B

.field private final:Landroid/support/v4/t70;

.field private for:[B

.field private goto:J

.field private if:I

.field private import:Z

.field private native:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v4/aa0;",
            ">;"
        }
    .end annotation
.end field

.field private new:Landroid/support/v4/hq;

.field private public:Z

.field private super:Z

.field private this:J

.field private throw:Landroid/support/v4/pj2;

.field private try:J

.field private while:Landroid/support/v4/goto;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/support/v4/qk2;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Landroid/support/v4/transient;->case:J

    .line 3
    iput-wide v0, p0, Landroid/support/v4/transient;->goto:J

    .line 4
    iput-wide v0, p0, Landroid/support/v4/transient;->this:J

    .line 5
    sget-object v0, Landroid/support/v4/t70;->NONE:Landroid/support/v4/t70;

    iput-object v0, p0, Landroid/support/v4/transient;->final:Landroid/support/v4/t70;

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/pj2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/transient;->throw:Landroid/support/v4/pj2;

    return-void
.end method

.method public abstract(Landroid/support/v4/t70;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/transient;->final:Landroid/support/v4/t70;

    return-void
.end method

.method public break()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/transient;->catch:I

    return v0
.end method

.method public case()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/support/v4/transient;->case:J

    return-wide v0
.end method

.method public catch()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/transient;->class:Ljava/lang/String;

    return-object v0
.end method

.method public class()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/transient;->break:I

    return v0
.end method

.method public const()[B
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/transient;->for:[B

    return-object v0
.end method

.method public continue(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v4/aa0;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroid/support/v4/transient;->native:Ljava/util/List;

    return-void
.end method

.method public default(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroid/support/v4/transient;->case:J

    return-void
.end method

.method public else()[B
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/transient;->else:[B

    return-object v0
.end method

.method public extends([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/transient;->else:[B

    return-void
.end method

.method public final()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/support/v4/transient;->try:J

    return-wide v0
.end method

.method public finally(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/support/v4/transient;->super:Z

    return-void
.end method

.method public for()Landroid/support/v4/goto;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/transient;->while:Landroid/support/v4/goto;

    return-object v0
.end method

.method public goto()Landroid/support/v4/t70;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/transient;->final:Landroid/support/v4/t70;

    return-object v0
.end method

.method public implements(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroid/support/v4/transient;->try:J

    return-void
.end method

.method public import()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/support/v4/transient;->super:Z

    return v0
.end method

.method public instanceof(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroid/support/v4/transient;->this:J

    return-void
.end method

.method public interface(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/support/v4/transient;->break:I

    return-void
.end method

.method public native()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/support/v4/transient;->public:Z

    return v0
.end method

.method public new()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/support/v4/transient;->goto:J

    return-wide v0
.end method

.method public package(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/support/v4/transient;->public:Z

    return-void
.end method

.method public private(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/support/v4/transient;->const:Z

    return-void
.end method

.method public protected(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/support/v4/transient;->import:Z

    return-void
.end method

.method public public()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/support/v4/transient;->const:Z

    return v0
.end method

.method public return()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/support/v4/transient;->import:Z

    return v0
.end method

.method public static(Landroid/support/v4/goto;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/transient;->while:Landroid/support/v4/goto;

    return-void
.end method

.method public strictfp(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/support/v4/transient;->catch:I

    return-void
.end method

.method public super()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/support/v4/transient;->this:J

    return-wide v0
.end method

.method public switch(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroid/support/v4/transient;->goto:J

    return-void
.end method

.method public synchronized(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/support/v4/transient;->if:I

    return-void
.end method

.method public this()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/support/v4/aa0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/support/v4/transient;->native:Ljava/util/List;

    return-object v0
.end method

.method public throw()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/transient;->if:I

    return v0
.end method

.method public throws(Landroid/support/v4/hq;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/transient;->new:Landroid/support/v4/hq;

    return-void
.end method

.method public transient([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/transient;->for:[B

    return-void
.end method

.method public try()Landroid/support/v4/hq;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/transient;->new:Landroid/support/v4/hq;

    return-object v0
.end method

.method public volatile(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/transient;->class:Ljava/lang/String;

    return-void
.end method

.method public while()Landroid/support/v4/pj2;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/transient;->throw:Landroid/support/v4/pj2;

    return-object v0
.end method
