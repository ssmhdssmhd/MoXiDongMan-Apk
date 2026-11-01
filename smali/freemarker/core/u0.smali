.class final Lfreemarker/core/u0;
.super Lfreemarker/core/s0;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;IIZLjava/util/TimeZone;Lfreemarker/core/t0;Lfreemarker/core/d0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/vn0;,
            Landroid/support/v4/xb2;
        }
    .end annotation

    .line 1
    invoke-direct/range {p0 .. p7}, Lfreemarker/core/s0;-><init>(Ljava/lang/String;IIZLjava/util/TimeZone;Lfreemarker/core/t0;Lfreemarker/core/d0;)V

    return-void
.end method


# virtual methods
.method public break()Ljava/lang/String;
    .locals 1

    const-string v0, "ISO 8601 (subset) date-time"

    return-object v0
.end method

.method public catch()Ljava/lang/String;
    .locals 1

    const-string v0, "ISO 8601 (subset) time"

    return-object v0
.end method

.method public class()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final(Ljava/lang/String;Ljava/util/TimeZone;Lfreemarker/template/utility/DateUtil$CalendarFieldsToDateConverter;)Ljava/util/Date;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/utility/DateUtil$do;
        }
    .end annotation

    .line 1
    invoke-static {p1, p2, p3}, Lfreemarker/template/utility/DateUtil;->catch(Ljava/lang/String;Ljava/util/TimeZone;Lfreemarker/template/utility/DateUtil$CalendarFieldsToDateConverter;)Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method public goto(Ljava/util/Date;ZZZILjava/util/TimeZone;Lfreemarker/template/utility/DateUtil$DateToISO8601CalendarFactory;)Ljava/lang/String;
    .locals 7

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    const/4 p4, 0x1

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    const/4 v3, 0x0

    :goto_0
    move-object v0, p1

    move v1, p2

    move v2, p3

    move v4, p5

    move-object v5, p6

    move-object v6, p7

    .line 1
    invoke-static/range {v0 .. v6}, Lfreemarker/template/utility/DateUtil;->if(Ljava/util/Date;ZZZILjava/util/TimeZone;Lfreemarker/template/utility/DateUtil$DateToISO8601CalendarFactory;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public super(Ljava/lang/String;Ljava/util/TimeZone;Lfreemarker/template/utility/DateUtil$CalendarFieldsToDateConverter;)Ljava/util/Date;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/utility/DateUtil$do;
        }
    .end annotation

    .line 1
    invoke-static {p1, p2, p3}, Lfreemarker/template/utility/DateUtil;->class(Ljava/lang/String;Ljava/util/TimeZone;Lfreemarker/template/utility/DateUtil$CalendarFieldsToDateConverter;)Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method public this()Ljava/lang/String;
    .locals 1

    const-string v0, "ISO 8601 (subset) date"

    return-object v0
.end method

.method public throw(Ljava/lang/String;Ljava/util/TimeZone;Lfreemarker/template/utility/DateUtil$CalendarFieldsToDateConverter;)Ljava/util/Date;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/utility/DateUtil$do;
        }
    .end annotation

    .line 1
    invoke-static {p1, p2, p3}, Lfreemarker/template/utility/DateUtil;->const(Ljava/lang/String;Ljava/util/TimeZone;Lfreemarker/template/utility/DateUtil$CalendarFieldsToDateConverter;)Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method
