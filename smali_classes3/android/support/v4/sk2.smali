.class public Landroid/support/v4/sk2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private break:J

.field private case:Z

.field private catch:Ljava/lang/String;

.field private class:Ljava/lang/String;

.field private const:J

.field private do:Landroid/support/v4/hq;

.field private else:Landroid/support/v4/w0;

.field private final:J

.field private for:Z

.field private goto:Landroid/support/v4/x0;

.field private if:Landroid/support/v4/fq;

.field private new:Landroid/support/v4/t70;

.field private super:Z

.field private this:Z

.field private throw:Z

.field private try:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Landroid/support/v4/hq;->DEFLATE:Landroid/support/v4/hq;

    iput-object v0, p0, Landroid/support/v4/sk2;->do:Landroid/support/v4/hq;

    .line 3
    sget-object v0, Landroid/support/v4/fq;->NORMAL:Landroid/support/v4/fq;

    iput-object v0, p0, Landroid/support/v4/sk2;->if:Landroid/support/v4/fq;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Landroid/support/v4/sk2;->for:Z

    .line 5
    sget-object v0, Landroid/support/v4/t70;->NONE:Landroid/support/v4/t70;

    iput-object v0, p0, Landroid/support/v4/sk2;->new:Landroid/support/v4/t70;

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Landroid/support/v4/sk2;->try:Z

    .line 7
    iput-boolean v0, p0, Landroid/support/v4/sk2;->case:Z

    .line 8
    sget-object v1, Landroid/support/v4/w0;->KEY_STRENGTH_256:Landroid/support/v4/w0;

    iput-object v1, p0, Landroid/support/v4/sk2;->else:Landroid/support/v4/w0;

    .line 9
    sget-object v1, Landroid/support/v4/x0;->TWO:Landroid/support/v4/x0;

    iput-object v1, p0, Landroid/support/v4/sk2;->goto:Landroid/support/v4/x0;

    .line 10
    iput-boolean v0, p0, Landroid/support/v4/sk2;->this:Z

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/support/v4/sk2;->const:J

    const-wide/16 v1, -0x1

    .line 12
    iput-wide v1, p0, Landroid/support/v4/sk2;->final:J

    .line 13
    iput-boolean v0, p0, Landroid/support/v4/sk2;->super:Z

    .line 14
    iput-boolean v0, p0, Landroid/support/v4/sk2;->throw:Z

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/sk2;)V
    .locals 3

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    sget-object v0, Landroid/support/v4/hq;->DEFLATE:Landroid/support/v4/hq;

    iput-object v0, p0, Landroid/support/v4/sk2;->do:Landroid/support/v4/hq;

    .line 17
    sget-object v0, Landroid/support/v4/fq;->NORMAL:Landroid/support/v4/fq;

    iput-object v0, p0, Landroid/support/v4/sk2;->if:Landroid/support/v4/fq;

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Landroid/support/v4/sk2;->for:Z

    .line 19
    sget-object v0, Landroid/support/v4/t70;->NONE:Landroid/support/v4/t70;

    iput-object v0, p0, Landroid/support/v4/sk2;->new:Landroid/support/v4/t70;

    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Landroid/support/v4/sk2;->try:Z

    .line 21
    iput-boolean v0, p0, Landroid/support/v4/sk2;->case:Z

    .line 22
    sget-object v1, Landroid/support/v4/w0;->KEY_STRENGTH_256:Landroid/support/v4/w0;

    iput-object v1, p0, Landroid/support/v4/sk2;->else:Landroid/support/v4/w0;

    .line 23
    sget-object v1, Landroid/support/v4/x0;->TWO:Landroid/support/v4/x0;

    iput-object v1, p0, Landroid/support/v4/sk2;->goto:Landroid/support/v4/x0;

    .line 24
    iput-boolean v0, p0, Landroid/support/v4/sk2;->this:Z

    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/support/v4/sk2;->const:J

    const-wide/16 v1, -0x1

    .line 26
    iput-wide v1, p0, Landroid/support/v4/sk2;->final:J

    .line 27
    iput-boolean v0, p0, Landroid/support/v4/sk2;->super:Z

    .line 28
    iput-boolean v0, p0, Landroid/support/v4/sk2;->throw:Z

    .line 29
    invoke-virtual {p1}, Landroid/support/v4/sk2;->new()Landroid/support/v4/hq;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/sk2;->do:Landroid/support/v4/hq;

    .line 30
    invoke-virtual {p1}, Landroid/support/v4/sk2;->for()Landroid/support/v4/fq;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/sk2;->if:Landroid/support/v4/fq;

    .line 31
    invoke-virtual {p1}, Landroid/support/v4/sk2;->catch()Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v4/sk2;->for:Z

    .line 32
    invoke-virtual {p1}, Landroid/support/v4/sk2;->case()Landroid/support/v4/t70;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/sk2;->new:Landroid/support/v4/t70;

    .line 33
    invoke-virtual {p1}, Landroid/support/v4/sk2;->final()Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v4/sk2;->try:Z

    .line 34
    invoke-virtual {p1}, Landroid/support/v4/sk2;->super()Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v4/sk2;->case:Z

    .line 35
    invoke-virtual {p1}, Landroid/support/v4/sk2;->do()Landroid/support/v4/w0;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/sk2;->else:Landroid/support/v4/w0;

    .line 36
    invoke-virtual {p1}, Landroid/support/v4/sk2;->if()Landroid/support/v4/x0;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/sk2;->goto:Landroid/support/v4/x0;

    .line 37
    invoke-virtual {p1}, Landroid/support/v4/sk2;->class()Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v4/sk2;->this:Z

    .line 38
    invoke-virtual {p1}, Landroid/support/v4/sk2;->else()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v4/sk2;->break:J

    .line 39
    invoke-virtual {p1}, Landroid/support/v4/sk2;->try()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/sk2;->catch:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Landroid/support/v4/sk2;->this()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/sk2;->class:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Landroid/support/v4/sk2;->break()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v4/sk2;->const:J

    .line 42
    invoke-virtual {p1}, Landroid/support/v4/sk2;->goto()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v4/sk2;->final:J

    .line 43
    invoke-virtual {p1}, Landroid/support/v4/sk2;->throw()Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v4/sk2;->super:Z

    .line 44
    invoke-virtual {p1}, Landroid/support/v4/sk2;->const()Z

    move-result p1

    iput-boolean p1, p0, Landroid/support/v4/sk2;->throw:Z

    return-void
.end method


# virtual methods
.method public abstract(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/support/v4/sk2;->try:Z

    return-void
.end method

.method public break()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/support/v4/sk2;->const:J

    return-wide v0
.end method

.method public case()Landroid/support/v4/t70;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/sk2;->new:Landroid/support/v4/t70;

    return-object v0
.end method

.method public catch()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/support/v4/sk2;->for:Z

    return v0
.end method

.method public class()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/support/v4/sk2;->this:Z

    return v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public const()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/support/v4/sk2;->throw:Z

    return v0
.end method

.method public continue(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/support/v4/sk2;->case:Z

    return-void
.end method

.method public default(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroid/support/v4/sk2;->final:J

    return-void
.end method

.method public do()Landroid/support/v4/w0;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/sk2;->else:Landroid/support/v4/w0;

    return-object v0
.end method

.method public else()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/support/v4/sk2;->break:J

    return-wide v0
.end method

.method public extends(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/sk2;->class:Ljava/lang/String;

    return-void
.end method

.method public final()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/support/v4/sk2;->try:Z

    return v0
.end method

.method public finally(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/support/v4/sk2;->this:Z

    return-void
.end method

.method public for()Landroid/support/v4/fq;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/sk2;->if:Landroid/support/v4/fq;

    return-object v0
.end method

.method public goto()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/support/v4/sk2;->final:J

    return-wide v0
.end method

.method public if()Landroid/support/v4/x0;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/sk2;->goto:Landroid/support/v4/x0;

    return-object v0
.end method

.method public import(Landroid/support/v4/x0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/sk2;->goto:Landroid/support/v4/x0;

    return-void
.end method

.method public native(Landroid/support/v4/fq;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/sk2;->if:Landroid/support/v4/fq;

    return-void
.end method

.method public new()Landroid/support/v4/hq;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/sk2;->do:Landroid/support/v4/hq;

    return-object v0
.end method

.method public package(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    return-void

    .line 1
    :cond_0
    iput-wide p1, p0, Landroid/support/v4/sk2;->const:J

    return-void
.end method

.method public private(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/support/v4/sk2;->throw:Z

    return-void
.end method

.method public public(Landroid/support/v4/hq;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/sk2;->do:Landroid/support/v4/hq;

    return-void
.end method

.method public return(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/sk2;->catch:Ljava/lang/String;

    return-void
.end method

.method public static(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/support/v4/sk2;->for:Z

    return-void
.end method

.method public strictfp(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/support/v4/sk2;->super:Z

    return-void
.end method

.method public super()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/support/v4/sk2;->case:Z

    return v0
.end method

.method public switch(Landroid/support/v4/t70;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/sk2;->new:Landroid/support/v4/t70;

    return-void
.end method

.method public this()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/sk2;->class:Ljava/lang/String;

    return-object v0
.end method

.method public throw()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/support/v4/sk2;->super:Z

    return v0
.end method

.method public throws(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroid/support/v4/sk2;->break:J

    return-void
.end method

.method public try()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/sk2;->catch:Ljava/lang/String;

    return-object v0
.end method

.method public while(Landroid/support/v4/w0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/sk2;->else:Landroid/support/v4/w0;

    return-void
.end method
