.class Lfreemarker/core/f$class$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfreemarker/template/TemplateMethodModelEx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/f$class;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "do"
.end annotation


# instance fields
.field private do:Ljava/lang/String;

.field public final synthetic if:Lfreemarker/core/f$class;


# direct methods
.method public constructor <init>(Lfreemarker/core/f$class;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfreemarker/core/f$class$do;->if:Lfreemarker/core/f$class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lfreemarker/core/f$class$do;->do:Ljava/lang/String;

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
    iget-object v1, p0, Lfreemarker/core/f$class$do;->if:Lfreemarker/core/f$class;

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-virtual {v1, v0, v2, v3}, Lfreemarker/core/return;->e(III)V

    .line 3
    iget-object v1, p0, Lfreemarker/core/f$class$do;->if:Lfreemarker/core/f$class;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Lfreemarker/core/return;->k(Ljava/util/List;I)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v3, 0x0

    if-le v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lfreemarker/core/f$class$do;->if:Lfreemarker/core/f$class;

    invoke-virtual {v0, p1, v2}, Lfreemarker/core/return;->k(Ljava/util/List;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lfreemarker/core/o3;->case(Ljava/lang/String;)J

    move-result-wide v5

    goto :goto_0

    :cond_0
    move-wide v5, v3

    :goto_0
    const-wide v7, 0x100000000L

    and-long/2addr v7, v5

    const/4 p1, -0x1

    cmp-long v0, v7, v3

    if-nez v0, :cond_2

    .line 5
    iget-object v0, p0, Lfreemarker/core/f$class$do;->if:Lfreemarker/core/f$class;

    iget-object v0, v0, Lfreemarker/core/return;->this:Ljava/lang/String;

    invoke-static {v0, v5, v6, v2}, Lfreemarker/core/o3;->if(Ljava/lang/String;JZ)V

    .line 6
    sget-wide v7, Lfreemarker/core/o3;->else:J

    and-long/2addr v5, v7

    cmp-long v0, v5, v3

    if-nez v0, :cond_1

    .line 7
    iget-object v0, p0, Lfreemarker/core/f$class$do;->do:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 8
    :cond_1
    iget-object v0, p0, Lfreemarker/core/f$class$do;->do:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    :goto_1
    if-ltz v0, :cond_6

    .line 9
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_3

    .line 10
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 11
    iget-object v0, p0, Lfreemarker/core/f$class$do;->do:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_3

    :cond_3
    long-to-int v0, v5

    .line 12
    invoke-static {v1, v0}, Lfreemarker/core/o3;->for(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 13
    iget-object v1, p0, Lfreemarker/core/f$class$do;->do:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 15
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    .line 16
    :goto_2
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 17
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_3

    :cond_5
    const/4 v0, -0x1

    :cond_6
    :goto_3
    if-ne v0, p1, :cond_7

    .line 18
    sget-object p1, Lfreemarker/template/TemplateScalarModel;->EMPTY_STRING:Lfreemarker/template/TemplateModel;

    goto :goto_4

    :cond_7
    new-instance p1, Landroid/support/v4/ez1;

    iget-object v1, p0, Lfreemarker/core/f$class$do;->do:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/support/v4/ez1;-><init>(Ljava/lang/String;)V

    :goto_4
    return-object p1
.end method
