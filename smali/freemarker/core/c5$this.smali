.class Lfreemarker/core/c5$this;
.super Lfreemarker/core/c5$for;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/c5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "this"
.end annotation


# instance fields
.field public final synthetic case:Lfreemarker/core/c5;

.field private final try:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lfreemarker/core/c5;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lfreemarker/core/c5$this;->case:Lfreemarker/core/c5;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lfreemarker/core/c5$for;-><init>(Lfreemarker/core/c5;Lfreemarker/core/c5$do;)V

    .line 2
    iput-object p2, p0, Lfreemarker/core/c5$this;->try:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public do()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/ol2;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/core/c5$this;->case:Lfreemarker/core/c5;

    iget-object v1, p0, Lfreemarker/core/c5$this;->try:Ljava/lang/Object;

    iget-object v2, p0, Lfreemarker/core/c5$for;->if:Ljava/util/List;

    iget-object v3, p0, Lfreemarker/core/c5$for;->for:Ljava/util/List;

    invoke-static {v0, v1, v2, v3}, Lfreemarker/core/c5;->if(Lfreemarker/core/c5;Ljava/lang/Object;Ljava/util/List;Ljava/util/List;)V

    .line 2
    iget-object v0, p0, Lfreemarker/core/c5$this;->try:Ljava/lang/Object;

    return-object v0
.end method

.method public if()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
