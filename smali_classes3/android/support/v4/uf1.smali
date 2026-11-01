.class public Landroid/support/v4/uf1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/uf1$for;,
        Landroid/support/v4/uf1$do;,
        Landroid/support/v4/uf1$if;
    }
.end annotation


# instance fields
.field private break:Z

.field private case:Ljava/lang/String;

.field private do:Landroid/support/v4/uf1$if;

.field private else:Landroid/support/v4/uf1$do;

.field private for:J

.field private goto:Ljava/lang/Exception;

.field private if:J

.field private new:I

.field private this:Z

.field private try:Landroid/support/v4/uf1$for;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-direct {p0}, Landroid/support/v4/uf1;->final()V

    return-void
.end method

.method private final()V
    .locals 1

    .line 1
    sget-object v0, Landroid/support/v4/uf1$for;->NONE:Landroid/support/v4/uf1$for;

    iput-object v0, p0, Landroid/support/v4/uf1;->try:Landroid/support/v4/uf1$for;

    .line 2
    sget-object v0, Landroid/support/v4/uf1$if;->READY:Landroid/support/v4/uf1$if;

    iput-object v0, p0, Landroid/support/v4/uf1;->do:Landroid/support/v4/uf1$if;

    return-void
.end method


# virtual methods
.method public break()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/support/v4/uf1;->if:J

    return-wide v0
.end method

.method public case()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/uf1;->case:Ljava/lang/String;

    return-object v0
.end method

.method public catch()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/support/v4/uf1;->for:J

    return-wide v0
.end method

.method public class()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/support/v4/uf1;->this:Z

    return v0
.end method

.method public const()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/support/v4/uf1;->break:Z

    return v0
.end method

.method public do()V
    .locals 1

    .line 1
    sget-object v0, Landroid/support/v4/uf1$do;->SUCCESS:Landroid/support/v4/uf1$do;

    iput-object v0, p0, Landroid/support/v4/uf1;->else:Landroid/support/v4/uf1$do;

    const/16 v0, 0x64

    .line 2
    iput v0, p0, Landroid/support/v4/uf1;->new:I

    .line 3
    invoke-direct {p0}, Landroid/support/v4/uf1;->final()V

    return-void
.end method

.method public else()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/uf1;->new:I

    return v0
.end method

.method public for()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/support/v4/uf1;->final()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroid/support/v4/uf1;->case:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Landroid/support/v4/uf1;->if:J

    .line 4
    iput-wide v0, p0, Landroid/support/v4/uf1;->for:J

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroid/support/v4/uf1;->new:I

    return-void
.end method

.method public goto()Landroid/support/v4/uf1$do;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/uf1;->else:Landroid/support/v4/uf1$do;

    return-object v0
.end method

.method public if(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    sget-object v0, Landroid/support/v4/uf1$do;->ERROR:Landroid/support/v4/uf1$do;

    iput-object v0, p0, Landroid/support/v4/uf1;->else:Landroid/support/v4/uf1$do;

    .line 2
    iput-object p1, p0, Landroid/support/v4/uf1;->goto:Ljava/lang/Exception;

    .line 3
    invoke-direct {p0}, Landroid/support/v4/uf1;->final()V

    return-void
.end method

.method public import(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/uf1;->case:Ljava/lang/String;

    return-void
.end method

.method public native(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/support/v4/uf1;->break:Z

    return-void
.end method

.method public new()Landroid/support/v4/uf1$for;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/uf1;->try:Landroid/support/v4/uf1$for;

    return-object v0
.end method

.method public public(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/support/v4/uf1;->new:I

    return-void
.end method

.method public return(Landroid/support/v4/uf1$do;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/uf1;->else:Landroid/support/v4/uf1$do;

    return-void
.end method

.method public static(Landroid/support/v4/uf1$if;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/uf1;->do:Landroid/support/v4/uf1$if;

    return-void
.end method

.method public super(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/support/v4/uf1;->this:Z

    return-void
.end method

.method public switch(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroid/support/v4/uf1;->if:J

    return-void
.end method

.method public this()Landroid/support/v4/uf1$if;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/uf1;->do:Landroid/support/v4/uf1$if;

    return-object v0
.end method

.method public throw(Landroid/support/v4/uf1$for;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/uf1;->try:Landroid/support/v4/uf1$for;

    return-void
.end method

.method public throws(J)V
    .locals 5

    .line 1
    iget-wide v0, p0, Landroid/support/v4/uf1;->for:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Landroid/support/v4/uf1;->for:J

    .line 2
    iget-wide p1, p0, Landroid/support/v4/uf1;->if:J

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-lez v4, :cond_0

    const-wide/16 v2, 0x64

    mul-long v0, v0, v2

    .line 3
    div-long/2addr v0, p1

    long-to-int p1, v0

    iput p1, p0, Landroid/support/v4/uf1;->new:I

    const/16 p2, 0x64

    if-le p1, p2, :cond_0

    .line 4
    iput p2, p0, Landroid/support/v4/uf1;->new:I

    .line 5
    :cond_0
    :goto_0
    iget-boolean p1, p0, Landroid/support/v4/uf1;->break:Z

    if-eqz p1, :cond_1

    const-wide/16 p1, 0x96

    .line 6
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    :cond_1
    return-void
.end method

.method public try()Ljava/lang/Exception;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/uf1;->goto:Ljava/lang/Exception;

    return-object v0
.end method

.method public while(Ljava/lang/Exception;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/uf1;->goto:Ljava/lang/Exception;

    return-void
.end method
