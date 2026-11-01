.class public final Lfreemarker/template/utility/DateUtil$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfreemarker/template/utility/DateUtil$CalendarFieldsToDateConverter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/template/utility/DateUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "if"
.end annotation


# instance fields
.field private do:Ljava/util/GregorianCalendar;

.field private if:Ljava/util/TimeZone;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public calculate(IIIIIIIIZLjava/util/TimeZone;)Ljava/util/Date;
    .locals 4

    .line 1
    iget-object v0, p0, Lfreemarker/template/utility/DateUtil$if;->do:Ljava/util/GregorianCalendar;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/GregorianCalendar;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, p10, v2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    iput-object v0, p0, Lfreemarker/template/utility/DateUtil$if;->do:Ljava/util/GregorianCalendar;

    .line 3
    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setLenient(Z)V

    .line 4
    iget-object p10, p0, Lfreemarker/template/utility/DateUtil$if;->do:Ljava/util/GregorianCalendar;

    new-instance v0, Ljava/util/Date;

    const-wide/high16 v2, -0x8000000000000000L

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p10, v0}, Ljava/util/GregorianCalendar;->setGregorianChange(Ljava/util/Date;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v2, p0, Lfreemarker/template/utility/DateUtil$if;->if:Ljava/util/TimeZone;

    if-eq v2, p10, :cond_1

    .line 6
    invoke-virtual {v0, p10}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 7
    iput-object p10, p0, Lfreemarker/template/utility/DateUtil$if;->if:Ljava/util/TimeZone;

    .line 8
    :cond_1
    :goto_0
    iget-object p10, p0, Lfreemarker/template/utility/DateUtil$if;->do:Ljava/util/GregorianCalendar;

    invoke-virtual {p10, v1, p1}, Ljava/util/GregorianCalendar;->set(II)V

    .line 9
    iget-object p1, p0, Lfreemarker/template/utility/DateUtil$if;->do:Ljava/util/GregorianCalendar;

    const/4 p10, 0x1

    invoke-virtual {p1, p10, p2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 10
    iget-object p1, p0, Lfreemarker/template/utility/DateUtil$if;->do:Ljava/util/GregorianCalendar;

    const/4 p2, 0x2

    invoke-virtual {p1, p2, p3}, Ljava/util/GregorianCalendar;->set(II)V

    .line 11
    iget-object p1, p0, Lfreemarker/template/utility/DateUtil$if;->do:Ljava/util/GregorianCalendar;

    const/4 p2, 0x5

    invoke-virtual {p1, p2, p4}, Ljava/util/GregorianCalendar;->set(II)V

    .line 12
    iget-object p1, p0, Lfreemarker/template/utility/DateUtil$if;->do:Ljava/util/GregorianCalendar;

    const/16 p3, 0xb

    invoke-virtual {p1, p3, p5}, Ljava/util/GregorianCalendar;->set(II)V

    .line 13
    iget-object p1, p0, Lfreemarker/template/utility/DateUtil$if;->do:Ljava/util/GregorianCalendar;

    const/16 p3, 0xc

    invoke-virtual {p1, p3, p6}, Ljava/util/GregorianCalendar;->set(II)V

    .line 14
    iget-object p1, p0, Lfreemarker/template/utility/DateUtil$if;->do:Ljava/util/GregorianCalendar;

    const/16 p3, 0xd

    invoke-virtual {p1, p3, p7}, Ljava/util/GregorianCalendar;->set(II)V

    .line 15
    iget-object p1, p0, Lfreemarker/template/utility/DateUtil$if;->do:Ljava/util/GregorianCalendar;

    const/16 p3, 0xe

    invoke-virtual {p1, p3, p8}, Ljava/util/GregorianCalendar;->set(II)V

    if-eqz p9, :cond_2

    .line 16
    iget-object p1, p0, Lfreemarker/template/utility/DateUtil$if;->do:Ljava/util/GregorianCalendar;

    invoke-virtual {p1, p2, p10}, Ljava/util/GregorianCalendar;->add(II)V

    .line 17
    :cond_2
    iget-object p1, p0, Lfreemarker/template/utility/DateUtil$if;->do:Ljava/util/GregorianCalendar;

    invoke-virtual {p1}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method
