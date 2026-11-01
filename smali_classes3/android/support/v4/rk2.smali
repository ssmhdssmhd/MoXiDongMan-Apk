.class public Landroid/support/v4/rk2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private break:Ljava/io/File;

.field private case:Landroid/support/v4/nj2;

.field private catch:Z

.field private class:Z

.field private const:J

.field private do:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v4/mu0;",
            ">;"
        }
    .end annotation
.end field

.field private else:Landroid/support/v4/oj2;

.field private final:J

.field private for:Landroid/support/v4/d3;

.field private goto:Z

.field private if:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v4/rw;",
            ">;"
        }
    .end annotation
.end field

.field private new:Landroid/support/v4/wf;

.field private this:J

.field private try:Landroid/support/v4/w70;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/rk2;->do:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/rk2;->if:Ljava/util/List;

    .line 4
    new-instance v0, Landroid/support/v4/d3;

    invoke-direct {v0}, Landroid/support/v4/d3;-><init>()V

    iput-object v0, p0, Landroid/support/v4/rk2;->for:Landroid/support/v4/d3;

    .line 5
    new-instance v0, Landroid/support/v4/wf;

    invoke-direct {v0}, Landroid/support/v4/wf;-><init>()V

    iput-object v0, p0, Landroid/support/v4/rk2;->new:Landroid/support/v4/wf;

    .line 6
    new-instance v0, Landroid/support/v4/w70;

    invoke-direct {v0}, Landroid/support/v4/w70;-><init>()V

    iput-object v0, p0, Landroid/support/v4/rk2;->try:Landroid/support/v4/w70;

    .line 7
    new-instance v0, Landroid/support/v4/nj2;

    invoke-direct {v0}, Landroid/support/v4/nj2;-><init>()V

    iput-object v0, p0, Landroid/support/v4/rk2;->case:Landroid/support/v4/nj2;

    .line 8
    new-instance v0, Landroid/support/v4/oj2;

    invoke-direct {v0}, Landroid/support/v4/oj2;-><init>()V

    iput-object v0, p0, Landroid/support/v4/rk2;->else:Landroid/support/v4/oj2;

    const-wide/16 v0, -0x1

    .line 9
    iput-wide v0, p0, Landroid/support/v4/rk2;->this:J

    return-void
.end method


# virtual methods
.method public break()Landroid/support/v4/oj2;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/rk2;->else:Landroid/support/v4/oj2;

    return-object v0
.end method

.method public case()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/support/v4/mu0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/support/v4/rk2;->do:Ljava/util/List;

    return-object v0
.end method

.method public catch()Ljava/io/File;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/rk2;->break:Ljava/io/File;

    return-object v0
.end method

.method public class()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/support/v4/rk2;->class:Z

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
    iget-boolean v0, p0, Landroid/support/v4/rk2;->goto:Z

    return v0
.end method

.method public default(Landroid/support/v4/nj2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/rk2;->case:Landroid/support/v4/nj2;

    return-void
.end method

.method public do()Landroid/support/v4/d3;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/rk2;->for:Landroid/support/v4/d3;

    return-object v0
.end method

.method public else()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/support/v4/rk2;->this:J

    return-wide v0
.end method

.method public extends(Landroid/support/v4/oj2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/rk2;->else:Landroid/support/v4/oj2;

    return-void
.end method

.method public final()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/support/v4/rk2;->catch:Z

    return v0
.end method

.method public finally(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/support/v4/rk2;->catch:Z

    return-void
.end method

.method public for()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/support/v4/rw;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/support/v4/rk2;->if:Ljava/util/List;

    return-object v0
.end method

.method public goto()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/support/v4/rk2;->const:J

    return-wide v0
.end method

.method public if()Landroid/support/v4/wf;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/rk2;->new:Landroid/support/v4/wf;

    return-object v0
.end method

.method public import(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroid/support/v4/rk2;->final:J

    return-void
.end method

.method public native(Landroid/support/v4/w70;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/rk2;->try:Landroid/support/v4/w70;

    return-void
.end method

.method public new()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/support/v4/rk2;->final:J

    return-wide v0
.end method

.method public package(Ljava/io/File;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/rk2;->break:Ljava/io/File;

    return-void
.end method

.method public public(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v4/mu0;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroid/support/v4/rk2;->do:Ljava/util/List;

    return-void
.end method

.method public return(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/support/v4/rk2;->class:Z

    return-void
.end method

.method public static(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/support/v4/rk2;->goto:Z

    return-void
.end method

.method public super(Landroid/support/v4/d3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/rk2;->for:Landroid/support/v4/d3;

    return-void
.end method

.method public switch(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroid/support/v4/rk2;->this:J

    return-void
.end method

.method public this()Landroid/support/v4/nj2;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/rk2;->case:Landroid/support/v4/nj2;

    return-object v0
.end method

.method public throw(Landroid/support/v4/wf;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/rk2;->new:Landroid/support/v4/wf;

    return-void
.end method

.method public throws(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroid/support/v4/rk2;->const:J

    return-void
.end method

.method public try()Landroid/support/v4/w70;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/rk2;->try:Landroid/support/v4/w70;

    return-object v0
.end method

.method public while(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v4/rw;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroid/support/v4/rk2;->if:Ljava/util/List;

    return-void
.end method
