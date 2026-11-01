.class Lfreemarker/core/a$new$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfreemarker/template/TemplateDateModel;
.implements Lfreemarker/template/TemplateMethodModel;
.implements Lfreemarker/template/TemplateHashModel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/a$new;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "do"
.end annotation


# instance fields
.field private final do:Ljava/lang/String;

.field private final for:Lfreemarker/core/z3;

.field private final if:Lfreemarker/core/d0;

.field private new:Lfreemarker/template/TemplateDateModel;

.field public final synthetic try:Lfreemarker/core/a$new;


# direct methods
.method public constructor <init>(Lfreemarker/core/a$new;Ljava/lang/String;Lfreemarker/core/d0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lfreemarker/core/a$new$do;->try:Lfreemarker/core/a$new;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lfreemarker/core/a$new$do;->do:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lfreemarker/core/a$new$do;->if:Lfreemarker/core/d0;

    .line 4
    invoke-static {p1}, Lfreemarker/core/a$new;->r(Lfreemarker/core/a$new;)I

    move-result p2

    const-class v0, Ljava/util/Date;

    iget-object p1, p1, Lfreemarker/core/return;->goto:Lfreemarker/core/h0;

    const/4 v1, 0x0

    invoke-virtual {p3, p2, v0, p1, v1}, Lfreemarker/core/d0;->h2(ILjava/lang/Class;Lfreemarker/core/h0;Z)Lfreemarker/core/z3;

    move-result-object p1

    iput-object p1, p0, Lfreemarker/core/a$new$do;->for:Lfreemarker/core/z3;

    return-void
.end method

.method private do()Lfreemarker/template/TemplateDateModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/core/a$new$do;->new:Lfreemarker/template/TemplateDateModel;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lfreemarker/core/a$new$do;->for:Lfreemarker/core/z3;

    invoke-direct {p0, v0}, Lfreemarker/core/a$new$do;->if(Lfreemarker/core/z3;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lfreemarker/core/a$new$do;->for(Ljava/lang/Object;)Lfreemarker/template/TemplateDateModel;

    move-result-object v0

    iput-object v0, p0, Lfreemarker/core/a$new$do;->new:Lfreemarker/template/TemplateDateModel;

    .line 3
    :cond_0
    iget-object v0, p0, Lfreemarker/core/a$new$do;->new:Lfreemarker/template/TemplateDateModel;

    return-object v0
.end method

.method private for(Ljava/lang/Object;)Lfreemarker/template/TemplateDateModel;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/vl2;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Ljava/util/Date;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Landroid/support/v4/wy1;

    check-cast p1, Ljava/util/Date;

    iget-object v1, p0, Lfreemarker/core/a$new$do;->try:Lfreemarker/core/a$new;

    invoke-static {v1}, Lfreemarker/core/a$new;->r(Lfreemarker/core/a$new;)I

    move-result v1

    invoke-direct {v0, p1, v1}, Landroid/support/v4/wy1;-><init>(Ljava/util/Date;I)V

    return-object v0

    .line 3
    :cond_0
    check-cast p1, Lfreemarker/template/TemplateDateModel;

    .line 4
    invoke-interface {p1}, Lfreemarker/template/TemplateDateModel;->getDateType()I

    move-result v0

    iget-object v1, p0, Lfreemarker/core/a$new$do;->try:Lfreemarker/core/a$new;

    invoke-static {v1}, Lfreemarker/core/a$new;->r(Lfreemarker/core/a$new;)I

    move-result v1

    if-ne v0, v1, :cond_1

    return-object p1

    .line 5
    :cond_1
    new-instance p1, Landroid/support/v4/vl2;

    const-string v0, "The result of the parsing was of the wrong date type."

    invoke-direct {p1, v0}, Landroid/support/v4/vl2;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private if(Lfreemarker/core/z3;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lfreemarker/core/a$new$do;->do:Ljava/lang/String;

    iget-object v1, p0, Lfreemarker/core/a$new$do;->try:Lfreemarker/core/a$new;

    invoke-static {v1}, Lfreemarker/core/a$new;->r(Lfreemarker/core/a$new;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lfreemarker/core/z3;->case(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Landroid/support/v4/p52; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Landroid/support/v4/vl2;

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "The string doesn\'t match the expected date/time/date-time format. The string to parse was: "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Landroid/support/v4/fl2;

    iget-object v5, p0, Lfreemarker/core/a$new$do;->do:Ljava/lang/String;

    invoke-direct {v4, v5}, Landroid/support/v4/fl2;-><init>(Ljava/lang/Object;)V

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, ". "

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "The expected format was: "

    aput-object v4, v2, v3

    const/4 v3, 0x4

    new-instance v4, Landroid/support/v4/fl2;

    .line 3
    invoke-virtual {p1}, Landroid/support/v4/o52;->do()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, p1}, Landroid/support/v4/fl2;-><init>(Ljava/lang/Object;)V

    aput-object v4, v2, v3

    const/4 p1, 0x5

    const-string v3, "."

    aput-object v3, v2, p1

    const/4 p1, 0x6

    .line 4
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    if-eqz v3, :cond_0

    const-string v3, "\nThe nested reason given follows:\n"

    goto :goto_0

    :cond_0
    move-object v3, v4

    :goto_0
    aput-object v3, v2, p1

    const/4 p1, 0x7

    .line 5
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    :cond_1
    aput-object v4, v2, p1

    invoke-direct {v1, v0, v2}, Landroid/support/v4/vl2;-><init>(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    throw v1
.end method


# virtual methods
.method public exec(Ljava/util/List;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/core/a$new$do;->try:Lfreemarker/core/a$new;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lfreemarker/core/return;->g(Ljava/util/List;II)V

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lfreemarker/core/a$new$do;->do()Lfreemarker/template/TemplateDateModel;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lfreemarker/core/a$new$do;->get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lfreemarker/core/a$new$do;->if:Lfreemarker/core/d0;

    iget-object v1, p0, Lfreemarker/core/a$new$do;->try:Lfreemarker/core/a$new;

    invoke-static {v1}, Lfreemarker/core/a$new;->r(Lfreemarker/core/a$new;)I

    move-result v2

    const-class v3, Ljava/util/Date;

    iget-object v5, p0, Lfreemarker/core/a$new$do;->try:Lfreemarker/core/a$new;

    iget-object v4, v5, Lfreemarker/core/return;->goto:Lfreemarker/core/h0;

    const/4 v6, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lfreemarker/core/d0;->l2(Ljava/lang/String;ILjava/lang/Class;Lfreemarker/core/h0;Lfreemarker/core/h0;Z)Lfreemarker/core/z3;

    move-result-object p1
    :try_end_0
    .catch Lfreemarker/template/TemplateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    invoke-direct {p0, p1}, Lfreemarker/core/a$new$do;->if(Lfreemarker/core/z3;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lfreemarker/core/a$new$do;->for(Ljava/lang/Object;)Lfreemarker/template/TemplateDateModel;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    const-string v0, "Failed to get format"

    .line 3
    invoke-static {v0, p1}, Lfreemarker/core/y4;->else(Ljava/lang/String;Lfreemarker/template/TemplateException;)Landroid/support/v4/k52;

    move-result-object p1

    throw p1
.end method

.method public getAsDate()Ljava/util/Date;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lfreemarker/core/a$new$do;->do()Lfreemarker/template/TemplateDateModel;

    move-result-object v0

    invoke-interface {v0}, Lfreemarker/template/TemplateDateModel;->getAsDate()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getDateType()I
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/core/a$new$do;->try:Lfreemarker/core/a$new;

    invoke-static {v0}, Lfreemarker/core/a$new;->r(Lfreemarker/core/a$new;)I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
