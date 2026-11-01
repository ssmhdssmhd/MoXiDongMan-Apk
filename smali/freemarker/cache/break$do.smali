.class final Lfreemarker/cache/break$do;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/cache/break;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "do"
.end annotation


# instance fields
.field private do:Lfreemarker/cache/break$do;

.field private final for:Ljava/lang/Object;

.field private if:Lfreemarker/cache/break$do;

.field private new:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0}, Lfreemarker/cache/break$do;->try()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lfreemarker/cache/break$do;->new:Ljava/lang/Object;

    iput-object v0, p0, Lfreemarker/cache/break$do;->for:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lfreemarker/cache/break$do;->for:Ljava/lang/Object;

    .line 6
    iput-object p2, p0, Lfreemarker/cache/break$do;->new:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public case(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfreemarker/cache/break$do;->new:Ljava/lang/Object;

    return-void
.end method

.method public do()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/cache/break$do;->for:Ljava/lang/Object;

    return-object v0
.end method

.method public else()V
    .locals 2

    .line 1
    iget-object v0, p0, Lfreemarker/cache/break$do;->if:Lfreemarker/cache/break$do;

    iget-object v1, p0, Lfreemarker/cache/break$do;->do:Lfreemarker/cache/break$do;

    iput-object v1, v0, Lfreemarker/cache/break$do;->do:Lfreemarker/cache/break$do;

    .line 2
    iget-object v1, p0, Lfreemarker/cache/break$do;->do:Lfreemarker/cache/break$do;

    iput-object v0, v1, Lfreemarker/cache/break$do;->if:Lfreemarker/cache/break$do;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lfreemarker/cache/break$do;->do:Lfreemarker/cache/break$do;

    .line 4
    iput-object v0, p0, Lfreemarker/cache/break$do;->if:Lfreemarker/cache/break$do;

    return-void
.end method

.method public for()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/cache/break$do;->new:Ljava/lang/Object;

    return-object v0
.end method

.method public if()Lfreemarker/cache/break$do;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/cache/break$do;->do:Lfreemarker/cache/break$do;

    return-object v0
.end method

.method public new(Lfreemarker/cache/break$do;)V
    .locals 1

    .line 1
    iget-object v0, p1, Lfreemarker/cache/break$do;->if:Lfreemarker/cache/break$do;

    iput-object v0, p0, Lfreemarker/cache/break$do;->if:Lfreemarker/cache/break$do;

    .line 2
    iput-object p0, p1, Lfreemarker/cache/break$do;->if:Lfreemarker/cache/break$do;

    .line 3
    iput-object p1, p0, Lfreemarker/cache/break$do;->do:Lfreemarker/cache/break$do;

    .line 4
    iget-object p1, p0, Lfreemarker/cache/break$do;->if:Lfreemarker/cache/break$do;

    iput-object p0, p1, Lfreemarker/cache/break$do;->do:Lfreemarker/cache/break$do;

    return-void
.end method

.method public try()V
    .locals 0

    .line 1
    iput-object p0, p0, Lfreemarker/cache/break$do;->if:Lfreemarker/cache/break$do;

    iput-object p0, p0, Lfreemarker/cache/break$do;->do:Lfreemarker/cache/break$do;

    return-void
.end method
