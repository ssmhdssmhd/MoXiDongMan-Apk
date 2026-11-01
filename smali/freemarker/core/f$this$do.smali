.class Lfreemarker/core/f$this$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfreemarker/template/TemplateMethodModelEx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/f$this;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "do"
.end annotation


# instance fields
.field private do:Ljava/lang/String;

.field public final synthetic if:Lfreemarker/core/f$this;


# direct methods
.method private constructor <init>(Lfreemarker/core/f$this;Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lfreemarker/core/f$this$do;->if:Lfreemarker/core/f$this;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lfreemarker/core/f$this$do;->do:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lfreemarker/core/f$this;Ljava/lang/String;Lfreemarker/core/f$do;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lfreemarker/core/f$this$do;-><init>(Lfreemarker/core/f$this;Ljava/lang/String;)V

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
    iget-object v0, p0, Lfreemarker/core/f$this$do;->if:Lfreemarker/core/f$this;

    const/4 v1, 0x1

    const/4 v2, 0x3

    invoke-virtual {v0, p1, v1, v2}, Lfreemarker/core/return;->g(Ljava/util/List;II)V

    .line 2
    iget-object v0, p0, Lfreemarker/core/f$this$do;->if:Lfreemarker/core/f$this;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Lfreemarker/core/return;->k(Ljava/util/List;I)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v1, :cond_3

    .line 4
    iget-object v2, p0, Lfreemarker/core/f$this$do;->if:Lfreemarker/core/f$this;

    invoke-virtual {v2, p1, v1}, Lfreemarker/core/return;->k(Ljava/util/List;I)Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const-wide v4, 0x100000000L

    const/4 v6, 0x2

    if-le v3, v6, :cond_0

    iget-object v3, p0, Lfreemarker/core/f$this$do;->if:Lfreemarker/core/f$this;

    .line 6
    invoke-virtual {v3, p1, v6}, Lfreemarker/core/return;->k(Ljava/util/List;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lfreemarker/core/o3;->case(Ljava/lang/String;)J

    move-result-wide v6

    goto :goto_0

    :cond_0
    move-wide v6, v4

    :goto_0
    and-long/2addr v4, v6

    const-wide/16 v8, 0x0

    cmp-long p1, v4, v8

    if-nez p1, :cond_2

    .line 7
    iget-object p1, p0, Lfreemarker/core/f$this$do;->if:Lfreemarker/core/f$this;

    iget-object p1, p1, Lfreemarker/core/return;->this:Ljava/lang/String;

    invoke-static {p1, v6, v7, v1}, Lfreemarker/core/o3;->if(Ljava/lang/String;JZ)V

    .line 8
    sget-wide v3, Lfreemarker/core/o3;->else:J

    and-long/2addr v3, v6

    cmp-long p1, v3, v8

    if-nez p1, :cond_1

    .line 9
    iget-object p1, p0, Lfreemarker/core/f$this$do;->do:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    goto :goto_1

    .line 10
    :cond_1
    iget-object p1, p0, Lfreemarker/core/f$this$do;->do:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    goto :goto_1

    :cond_2
    long-to-int p1, v6

    .line 11
    invoke-static {v0, p1}, Lfreemarker/core/o3;->for(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p1

    .line 12
    iget-object v0, p0, Lfreemarker/core/f$this$do;->do:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result p1

    :goto_1
    move-object v0, v2

    goto :goto_2

    .line 14
    :cond_3
    iget-object p1, p0, Lfreemarker/core/f$this$do;->do:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    .line 15
    :goto_2
    new-instance v1, Landroid/support/v4/ez1;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lfreemarker/core/f$this$do;->do:Ljava/lang/String;

    goto :goto_3

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lfreemarker/core/f$this$do;->do:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_3
    invoke-direct {v1, p1}, Landroid/support/v4/ez1;-><init>(Ljava/lang/String;)V

    return-object v1
.end method
