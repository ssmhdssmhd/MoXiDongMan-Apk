.class Lfreemarker/core/a$new;
.super Lfreemarker/core/return;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "new"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/core/a$new$do;
    }
.end annotation


# instance fields
.field private final final:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/core/return;-><init>()V

    .line 2
    iput p1, p0, Lfreemarker/core/a$new;->final:I

    return-void
.end method

.method public static synthetic r(Lfreemarker/core/a$new;)I
    .locals 0

    .line 1
    iget p0, p0, Lfreemarker/core/a$new;->final:I

    return p0
.end method


# virtual methods
.method public native(Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/core/return;->goto:Lfreemarker/core/h0;

    invoke-virtual {v0, p1}, Lfreemarker/core/h0;->throws(Lfreemarker/core/d0;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lfreemarker/template/TemplateDateModel;

    if-eqz v1, :cond_3

    .line 3
    move-object p1, v0

    check-cast p1, Lfreemarker/template/TemplateDateModel;

    .line 4
    invoke-interface {p1}, Lfreemarker/template/TemplateDateModel;->getDateType()I

    move-result v1

    .line 5
    iget v2, p0, Lfreemarker/core/a$new;->final:I

    if-ne v2, v1, :cond_0

    return-object v0

    :cond_0
    if-eqz v1, :cond_2

    const/4 v0, 0x3

    if-ne v1, v0, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    new-instance p1, Landroid/support/v4/nl2;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "Cannot convert "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lfreemarker/template/TemplateDateModel;->TYPE_NAMES:Ljava/util/List;

    .line 7
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v2, v3

    const/4 v1, 0x2

    const-string v3, " to "

    aput-object v3, v2, v1

    iget v1, p0, Lfreemarker/core/a$new;->final:I

    .line 8
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v2, v0

    invoke-direct {p1, p0, v2}, Landroid/support/v4/nl2;-><init>(Lfreemarker/core/h0;[Ljava/lang/Object;)V

    throw p1

    .line 9
    :cond_2
    :goto_0
    new-instance v0, Landroid/support/v4/wy1;

    invoke-interface {p1}, Lfreemarker/template/TemplateDateModel;->getAsDate()Ljava/util/Date;

    move-result-object p1

    iget v1, p0, Lfreemarker/core/a$new;->final:I

    invoke-direct {v0, p1, v1}, Landroid/support/v4/wy1;-><init>(Ljava/util/Date;I)V

    return-object v0

    .line 10
    :cond_3
    iget-object v0, p0, Lfreemarker/core/return;->goto:Lfreemarker/core/h0;

    invoke-virtual {v0, p1}, Lfreemarker/core/h0;->default(Lfreemarker/core/d0;)Ljava/lang/String;

    move-result-object v0

    .line 11
    new-instance v1, Lfreemarker/core/a$new$do;

    invoke-direct {v1, p0, v0, p1}, Lfreemarker/core/a$new$do;-><init>(Lfreemarker/core/a$new;Ljava/lang/String;Lfreemarker/core/d0;)V

    return-object v1
.end method
