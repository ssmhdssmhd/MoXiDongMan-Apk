.class Lfreemarker/core/i$new$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfreemarker/template/TemplateMethodModel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/i$new;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "do"
.end annotation


# instance fields
.field private do:Ljava/lang/String;

.field public final synthetic if:Lfreemarker/core/i$new;


# direct methods
.method public constructor <init>(Lfreemarker/core/i$new;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfreemarker/core/i$new$do;->if:Lfreemarker/core/i$new;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lfreemarker/core/i$new$do;->do:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public exec(Ljava/util/List;)Ljava/lang/Object;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 2
    iget-object v1, p0, Lfreemarker/core/i$new$do;->if:Lfreemarker/core/i$new;

    const/4 v2, 0x2

    const/4 v3, 0x3

    invoke-virtual {v1, v0, v2, v3}, Lfreemarker/core/return;->e(III)V

    const/4 v1, 0x0

    .line 3
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x1

    .line 4
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-wide/16 v6, 0x0

    if-le v0, v2, :cond_0

    .line 5
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lfreemarker/core/o3;->case(Ljava/lang/String;)J

    move-result-wide v8

    goto :goto_0

    :cond_0
    move-wide v8, v6

    :goto_0
    const-wide v10, 0x100000000L

    and-long/2addr v10, v8

    const-wide v12, 0x200000000L

    cmp-long p1, v10, v6

    if-nez p1, :cond_3

    const-string p1, "replace"

    .line 6
    invoke-static {p1, v8, v9}, Lfreemarker/core/o3;->do(Ljava/lang/String;J)V

    .line 7
    iget-object p1, p0, Lfreemarker/core/i$new$do;->do:Ljava/lang/String;

    sget-wide v10, Lfreemarker/core/o3;->else:J

    and-long/2addr v10, v8

    cmp-long v0, v10, v6

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    and-long/2addr v8, v12

    cmp-long v2, v8, v6

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-static {p1, v3, v5, v0, v1}, Lfreemarker/template/utility/super;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_3
    long-to-int p1, v8

    .line 8
    invoke-static {v3, p1}, Lfreemarker/core/o3;->for(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p1

    .line 9
    iget-object v0, p0, Lfreemarker/core/i$new$do;->do:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    and-long v0, v8, v12

    cmp-long v2, v0, v6

    if-eqz v2, :cond_4

    .line 10
    invoke-virtual {p1, v5}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 11
    :cond_4
    invoke-virtual {p1, v5}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 12
    :goto_2
    new-instance v0, Landroid/support/v4/ez1;

    invoke-direct {v0, p1}, Landroid/support/v4/ez1;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
