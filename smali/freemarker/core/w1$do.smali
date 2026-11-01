.class Lfreemarker/core/w1$do;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/w1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "do"
.end annotation


# instance fields
.field private final do:Lfreemarker/core/m4;

.field private final for:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lfreemarker/core/w0;",
            ">;"
        }
    .end annotation
.end field

.field private final if:Lfreemarker/core/m4;


# direct methods
.method public constructor <init>(Lfreemarker/core/m4;Ljava/util/List;Lfreemarker/core/m4;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfreemarker/core/m4;",
            "Ljava/util/List<",
            "Lfreemarker/core/w0;",
            ">;",
            "Lfreemarker/core/m4;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lfreemarker/core/w1$do;->do:Lfreemarker/core/m4;

    .line 3
    iput-object p3, p0, Lfreemarker/core/w1$do;->if:Lfreemarker/core/m4;

    .line 4
    iput-object p2, p0, Lfreemarker/core/w1$do;->for:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public do()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lfreemarker/core/w1$do;->for:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 2
    iget-object v0, p0, Lfreemarker/core/w1$do;->for:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfreemarker/core/w0;

    invoke-virtual {v0}, Lfreemarker/core/w0;->for()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x28

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5
    :goto_0
    iget-object v2, p0, Lfreemarker/core/w1$do;->for:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    if-eqz v1, :cond_1

    const-string v2, ", "

    .line 6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    :cond_1
    iget-object v2, p0, Lfreemarker/core/w1$do;->for:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfreemarker/core/w0;

    .line 8
    invoke-virtual {v2}, Lfreemarker/core/w0;->for()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/16 v1, 0x29

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public for()Lfreemarker/core/m4;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/core/w1$do;->do:Lfreemarker/core/m4;

    return-object v0
.end method

.method public if()Lfreemarker/core/m4;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/core/w1$do;->if:Lfreemarker/core/m4;

    return-object v0
.end method

.method public new()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lfreemarker/core/w0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/core/w1$do;->for:Ljava/util/List;

    return-object v0
.end method
