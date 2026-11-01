.class Lfreemarker/core/protected$new;
.super Lfreemarker/core/protected$do;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/protected;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "new"
.end annotation


# instance fields
.field private final throw:Z


# direct methods
.method public constructor <init>(Ljava/lang/Boolean;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lfreemarker/core/protected$do;-><init>(Ljava/lang/Boolean;I)V

    .line 2
    iput-boolean p3, p0, Lfreemarker/core/protected$new;->throw:Z

    return-void
.end method


# virtual methods
.method public r(Ljava/util/Date;ILfreemarker/core/d0;)Lfreemarker/template/TemplateModel;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p2}, Lfreemarker/core/protected$do;->t(I)V

    .line 2
    new-instance v0, Landroid/support/v4/ez1;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p2, v2, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    const/4 v3, 0x2

    if-eq p2, v3, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    .line 3
    :goto_1
    invoke-virtual {p0, p1, p2, p3}, Lfreemarker/core/protected$do;->u(Ljava/util/Date;ILfreemarker/core/d0;)Z

    move-result v6

    iget v7, p0, Lfreemarker/core/protected$do;->super:I

    iget-boolean p2, p0, Lfreemarker/core/protected$new;->throw:Z

    if-eqz p2, :cond_2

    sget-object p2, Lfreemarker/template/utility/DateUtil;->case:Ljava/util/TimeZone;

    :goto_2
    move-object v8, p2

    goto :goto_3

    .line 4
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p3, p2}, Lfreemarker/core/d0;->v3(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 5
    invoke-virtual {p3}, Lfreemarker/core/t;->a()Ljava/util/TimeZone;

    move-result-object p2

    goto :goto_2

    .line 6
    :cond_3
    invoke-virtual {p3}, Lfreemarker/core/t;->h()Ljava/util/TimeZone;

    move-result-object p2

    goto :goto_2

    .line 7
    :goto_3
    invoke-virtual {p3}, Lfreemarker/core/d0;->L1()Lfreemarker/template/utility/DateUtil$DateToISO8601CalendarFactory;

    move-result-object v9

    move-object v3, p1

    .line 8
    invoke-static/range {v3 .. v9}, Lfreemarker/template/utility/DateUtil;->if(Ljava/util/Date;ZZZILjava/util/TimeZone;Lfreemarker/template/utility/DateUtil$DateToISO8601CalendarFactory;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/support/v4/ez1;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
