.class Lfreemarker/core/protected$for$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfreemarker/template/TemplateMethodModelEx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/protected$for;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "do"
.end annotation


# instance fields
.field private final do:Ljava/util/Date;

.field private final for:Lfreemarker/core/d0;

.field private final if:I

.field public final synthetic new:Lfreemarker/core/protected$for;


# direct methods
.method public constructor <init>(Lfreemarker/core/protected$for;Ljava/util/Date;ILfreemarker/core/d0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfreemarker/core/protected$for$do;->new:Lfreemarker/core/protected$for;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lfreemarker/core/protected$for$do;->do:Ljava/util/Date;

    .line 3
    iput p3, p0, Lfreemarker/core/protected$for$do;->if:I

    .line 4
    iput-object p4, p0, Lfreemarker/core/protected$for$do;->for:Lfreemarker/core/d0;

    return-void
.end method


# virtual methods
.method public exec(Ljava/util/List;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/core/protected$for$do;->new:Lfreemarker/core/protected$for;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lfreemarker/core/return;->f(Ljava/util/List;I)V

    const/4 v0, 0x0

    .line 2
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lfreemarker/template/TemplateModel;

    .line 3
    instance-of v2, p1, Lfreemarker/template/AdapterTemplateModel;

    const/4 v3, 0x2

    if-eqz v2, :cond_0

    move-object v2, p1

    check-cast v2, Lfreemarker/template/AdapterTemplateModel;

    const-class v4, Ljava/util/TimeZone;

    .line 4
    invoke-interface {v2, v4}, Lfreemarker/template/AdapterTemplateModel;->getAdaptedObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    instance-of v4, v2, Ljava/util/TimeZone;

    if-eqz v4, :cond_0

    .line 5
    check-cast v2, Ljava/util/TimeZone;

    :goto_0
    move-object v9, v2

    goto :goto_1

    .line 6
    :cond_0
    instance-of v2, p1, Lfreemarker/template/TemplateScalarModel;

    if-eqz v2, :cond_3

    .line 7
    check-cast p1, Lfreemarker/template/TemplateScalarModel;

    const/4 v2, 0x0

    invoke-static {p1, v2, v2}, Lfreemarker/core/f0;->native(Lfreemarker/template/TemplateScalarModel;Lfreemarker/core/h0;Lfreemarker/core/d0;)Ljava/lang/String;

    move-result-object p1

    .line 8
    :try_start_0
    invoke-static {p1}, Lfreemarker/template/utility/DateUtil;->try(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2
    :try_end_0
    .catch Landroid/support/v4/ic2; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 9
    :goto_1
    new-instance p1, Landroid/support/v4/ez1;

    iget-object v4, p0, Lfreemarker/core/protected$for$do;->do:Ljava/util/Date;

    iget v2, p0, Lfreemarker/core/protected$for$do;->if:I

    if-eq v2, v1, :cond_1

    const/4 v5, 0x1

    goto :goto_2

    :cond_1
    const/4 v5, 0x0

    :goto_2
    if-eq v2, v3, :cond_2

    const/4 v6, 0x1

    goto :goto_3

    :cond_2
    const/4 v6, 0x0

    :goto_3
    iget-object v0, p0, Lfreemarker/core/protected$for$do;->new:Lfreemarker/core/protected$for;

    iget-object v1, p0, Lfreemarker/core/protected$for$do;->for:Lfreemarker/core/d0;

    .line 10
    invoke-virtual {v0, v4, v2, v1}, Lfreemarker/core/protected$do;->u(Ljava/util/Date;ILfreemarker/core/d0;)Z

    move-result v7

    iget-object v0, p0, Lfreemarker/core/protected$for$do;->new:Lfreemarker/core/protected$for;

    iget v8, v0, Lfreemarker/core/protected$do;->super:I

    iget-object v0, p0, Lfreemarker/core/protected$for$do;->for:Lfreemarker/core/d0;

    .line 11
    invoke-virtual {v0}, Lfreemarker/core/d0;->L1()Lfreemarker/template/utility/DateUtil$DateToISO8601CalendarFactory;

    move-result-object v10

    .line 12
    invoke-static/range {v4 .. v10}, Lfreemarker/template/utility/DateUtil;->if(Ljava/util/Date;ZZZILjava/util/TimeZone;Lfreemarker/template/utility/DateUtil$DateToISO8601CalendarFactory;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/support/v4/ez1;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 13
    :catch_0
    new-instance v2, Landroid/support/v4/vl2;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "The time zone string specified for ?"

    aput-object v5, v4, v0

    iget-object v0, p0, Lfreemarker/core/protected$for$do;->new:Lfreemarker/core/protected$for;

    iget-object v0, v0, Lfreemarker/core/return;->this:Ljava/lang/String;

    aput-object v0, v4, v1

    const-string v0, "(...) is not recognized as a valid time zone name: "

    aput-object v0, v4, v3

    const/4 v0, 0x3

    new-instance v1, Landroid/support/v4/fl2;

    invoke-direct {v1, p1}, Landroid/support/v4/fl2;-><init>(Ljava/lang/Object;)V

    aput-object v1, v4, v0

    invoke-direct {v2, v4}, Landroid/support/v4/vl2;-><init>([Ljava/lang/Object;)V

    throw v2

    .line 14
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lfreemarker/core/protected$for$do;->new:Lfreemarker/core/protected$for;

    iget-object v2, v2, Lfreemarker/core/return;->this:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "string or java.util.TimeZone"

    invoke-static {v1, v0, v2, p1}, Lfreemarker/core/b5;->abstract(Ljava/lang/String;ILjava/lang/String;Lfreemarker/template/TemplateModel;)Landroid/support/v4/k52;

    move-result-object p1

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method
