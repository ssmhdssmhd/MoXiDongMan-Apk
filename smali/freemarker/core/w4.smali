.class final Lfreemarker/core/w4;
.super Lfreemarker/core/s0;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;IIZLjava/util/TimeZone;Lfreemarker/core/t0;Lfreemarker/core/d0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/xb2;,
            Landroid/support/v4/vn0;
        }
    .end annotation

    .line 1
    invoke-direct/range {p0 .. p7}, Lfreemarker/core/s0;-><init>(Ljava/lang/String;IIZLjava/util/TimeZone;Lfreemarker/core/t0;Lfreemarker/core/d0;)V

    return-void
.end method


# virtual methods
.method public break()Ljava/lang/String;
    .locals 1

    const-string v0, "W3C XML Schema dateTime"

    return-object v0
.end method

.method public catch()Ljava/lang/String;
    .locals 1

    const-string v0, "W3C XML Schema time"

    return-object v0
.end method

.method public class()Z
    .locals 1

    const/4 v0, 0x1

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
    invoke-static {p1, p2, p3}, Lfreemarker/template/utility/DateUtil;->throw(Ljava/lang/String;Ljava/util/TimeZone;Lfreemarker/template/utility/DateUtil$CalendarFieldsToDateConverter;)Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method public goto(Ljava/util/Date;ZZZILjava/util/TimeZone;Lfreemarker/template/utility/DateUtil$DateToISO8601CalendarFactory;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static/range {p1 .. p7}, Lfreemarker/template/utility/DateUtil;->new(Ljava/util/Date;ZZZILjava/util/TimeZone;Lfreemarker/template/utility/DateUtil$DateToISO8601CalendarFactory;)Ljava/lang/String;

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
    invoke-static {p1, p2, p3}, Lfreemarker/template/utility/DateUtil;->while(Ljava/lang/String;Ljava/util/TimeZone;Lfreemarker/template/utility/DateUtil$CalendarFieldsToDateConverter;)Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method public this()Ljava/lang/String;
    .locals 1

    const-string v0, "W3C XML Schema date"

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
    invoke-static {p1, p2, p3}, Lfreemarker/template/utility/DateUtil;->import(Ljava/lang/String;Ljava/util/TimeZone;Lfreemarker/template/utility/DateUtil$CalendarFieldsToDateConverter;)Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method
