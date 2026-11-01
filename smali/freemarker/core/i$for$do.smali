.class Lfreemarker/core/i$for$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfreemarker/template/TemplateMethodModel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/i$for;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "do"
.end annotation


# instance fields
.field public do:Ljava/lang/String;

.field public final synthetic if:Lfreemarker/core/i$for;


# direct methods
.method public constructor <init>(Lfreemarker/core/i$for;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lfreemarker/core/i$for$do;->if:Lfreemarker/core/i$for;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lfreemarker/core/i$for$do;->do:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public exec(Ljava/util/List;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 2
    iget-object v1, p0, Lfreemarker/core/i$for$do;->if:Lfreemarker/core/i$for;

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-virtual {v1, v0, v2, v3}, Lfreemarker/core/return;->e(III)V

    const/4 v1, 0x0

    .line 3
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-wide/16 v3, 0x0

    if-le v0, v2, :cond_0

    .line 4
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lfreemarker/core/o3;->case(Ljava/lang/String;)J

    move-result-wide v5

    goto :goto_0

    :cond_0
    move-wide v5, v3

    :goto_0
    const-wide v7, 0x200000000L

    and-long/2addr v7, v5

    cmp-long p1, v7, v3

    if-eqz p1, :cond_1

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "?"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lfreemarker/core/i$for$do;->if:Lfreemarker/core/i$for;

    iget-object v0, v0, Lfreemarker/core/return;->this:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " doesn\'t support the \"f\" flag."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lfreemarker/core/o3;->try(Ljava/lang/String;)V

    :cond_1
    long-to-int p1, v5

    .line 6
    invoke-static {v1, p1}, Lfreemarker/core/o3;->for(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p1

    .line 7
    new-instance v0, Lfreemarker/core/i$do;

    iget-object v1, p0, Lfreemarker/core/i$for$do;->do:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lfreemarker/core/i$do;-><init>(Ljava/util/regex/Pattern;Ljava/lang/String;)V

    return-object v0
.end method
