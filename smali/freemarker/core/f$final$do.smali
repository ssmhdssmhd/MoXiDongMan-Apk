.class Lfreemarker/core/f$final$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfreemarker/template/TemplateMethodModelEx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/f$final;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "do"
.end annotation


# instance fields
.field private do:Ljava/lang/String;

.field public final synthetic if:Lfreemarker/core/f$final;


# direct methods
.method public constructor <init>(Lfreemarker/core/f$final;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfreemarker/core/f$final$do;->if:Lfreemarker/core/f$final;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lfreemarker/core/f$final$do;->do:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public exec(Ljava/util/List;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 2
    iget-object v1, p0, Lfreemarker/core/f$final$do;->if:Lfreemarker/core/f$final;

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-virtual {v1, v0, v2, v3}, Lfreemarker/core/return;->e(III)V

    .line 3
    iget-object v1, p0, Lfreemarker/core/f$final$do;->if:Lfreemarker/core/f$final;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Lfreemarker/core/return;->k(Ljava/util/List;I)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v4, 0x0

    if-le v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lfreemarker/core/f$final$do;->if:Lfreemarker/core/f$final;

    invoke-virtual {v0, p1, v2}, Lfreemarker/core/return;->k(Ljava/util/List;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lfreemarker/core/o3;->case(Ljava/lang/String;)J

    move-result-wide v6

    goto :goto_0

    :cond_0
    move-wide v6, v4

    :goto_0
    const-wide v8, 0x100000000L

    and-long/2addr v8, v6

    const/4 p1, -0x1

    cmp-long v0, v8, v4

    if-nez v0, :cond_2

    .line 5
    iget-object v0, p0, Lfreemarker/core/f$final$do;->if:Lfreemarker/core/f$final;

    iget-object v0, v0, Lfreemarker/core/return;->this:Ljava/lang/String;

    invoke-static {v0, v6, v7, v2}, Lfreemarker/core/o3;->if(Ljava/lang/String;JZ)V

    .line 6
    sget-wide v8, Lfreemarker/core/o3;->else:J

    and-long/2addr v6, v8

    cmp-long v0, v6, v4

    if-nez v0, :cond_1

    .line 7
    iget-object v0, p0, Lfreemarker/core/f$final$do;->do:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    goto :goto_2

    .line 8
    :cond_1
    iget-object v0, p0, Lfreemarker/core/f$final$do;->do:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    goto :goto_2

    .line 9
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 10
    iget-object v0, p0, Lfreemarker/core/f$final$do;->do:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_2

    :cond_3
    long-to-int v0, v6

    .line 11
    invoke-static {v1, v0}, Lfreemarker/core/o3;->for(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 12
    iget-object v1, p0, Lfreemarker/core/f$final$do;->do:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 14
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    :goto_1
    add-int/lit8 v2, v1, 0x1

    .line 15
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 16
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2

    :cond_5
    const/4 v0, -0x1

    :goto_2
    if-ne v0, p1, :cond_6

    .line 17
    new-instance p1, Landroid/support/v4/ez1;

    iget-object v0, p0, Lfreemarker/core/f$final$do;->do:Ljava/lang/String;

    invoke-direct {p1, v0}, Landroid/support/v4/ez1;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    new-instance p1, Landroid/support/v4/ez1;

    iget-object v1, p0, Lfreemarker/core/f$final$do;->do:Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/support/v4/ez1;-><init>(Ljava/lang/String;)V

    :goto_3
    return-object p1
.end method
