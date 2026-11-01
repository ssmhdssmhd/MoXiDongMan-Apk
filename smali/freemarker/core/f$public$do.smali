.class Lfreemarker/core/f$public$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfreemarker/template/TemplateMethodModel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/f$public;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "do"
.end annotation


# instance fields
.field private do:Ljava/lang/String;

.field public final synthetic if:Lfreemarker/core/f$public;


# direct methods
.method public constructor <init>(Lfreemarker/core/f$public;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfreemarker/core/f$public$do;->if:Lfreemarker/core/f$public;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lfreemarker/core/f$public$do;->do:Ljava/lang/String;

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
    iget-object v1, p0, Lfreemarker/core/f$public$do;->if:Lfreemarker/core/f$public;

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-virtual {v1, v0, v2, v3}, Lfreemarker/core/return;->e(III)V

    const/4 v1, 0x0

    .line 3
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-wide/16 v4, 0x0

    if-le v0, v2, :cond_0

    .line 4
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lfreemarker/core/o3;->case(Ljava/lang/String;)J

    move-result-wide v6

    goto :goto_0

    :cond_0
    move-wide v6, v4

    :goto_0
    const-wide v8, 0x100000000L

    and-long/2addr v8, v6

    cmp-long p1, v8, v4

    if-nez p1, :cond_2

    .line 5
    iget-object p1, p0, Lfreemarker/core/f$public$do;->if:Lfreemarker/core/f$public;

    iget-object p1, p1, Lfreemarker/core/return;->this:Ljava/lang/String;

    invoke-static {p1, v6, v7}, Lfreemarker/core/o3;->do(Ljava/lang/String;J)V

    .line 6
    iget-object p1, p0, Lfreemarker/core/f$public$do;->do:Ljava/lang/String;

    sget-wide v8, Lfreemarker/core/o3;->else:J

    and-long/2addr v6, v8

    cmp-long v0, v6, v4

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-static {p1, v3, v2}, Lfreemarker/template/utility/super;->u(Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_2
    long-to-int p1, v6

    .line 7
    invoke-static {v3, p1}, Lfreemarker/core/o3;->for(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p1

    .line 8
    iget-object v0, p0, Lfreemarker/core/f$public$do;->do:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object p1

    .line 9
    :goto_2
    sget-object v0, Lfreemarker/template/ObjectWrapper;->DEFAULT_WRAPPER:Lfreemarker/template/ObjectWrapper;

    invoke-interface {v0, p1}, Lfreemarker/template/ObjectWrapper;->wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1
.end method
