.class public final Lfreemarker/template/utility/DateUtil$for;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfreemarker/template/utility/DateUtil$DateToISO8601CalendarFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/template/utility/DateUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "for"
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
.method public get(Ljava/util/TimeZone;Ljava/util/Date;)Ljava/util/GregorianCalendar;
    .locals 3

    .line 1
    iget-object v0, p0, Lfreemarker/template/utility/DateUtil$for;->do:Ljava/util/GregorianCalendar;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/GregorianCalendar;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, p1, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    iput-object v0, p0, Lfreemarker/template/utility/DateUtil$for;->do:Ljava/util/GregorianCalendar;

    .line 3
    new-instance p1, Ljava/util/Date;

    const-wide/high16 v1, -0x8000000000000000L

    invoke-direct {p1, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, p1}, Ljava/util/GregorianCalendar;->setGregorianChange(Ljava/util/Date;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lfreemarker/template/utility/DateUtil$for;->if:Ljava/util/TimeZone;

    if-eq v1, p1, :cond_1

    .line 5
    invoke-virtual {v0, p1}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 6
    iput-object p1, p0, Lfreemarker/template/utility/DateUtil$for;->if:Ljava/util/TimeZone;

    .line 7
    :cond_1
    :goto_0
    iget-object p1, p0, Lfreemarker/template/utility/DateUtil$for;->do:Ljava/util/GregorianCalendar;

    invoke-virtual {p1, p2}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    .line 8
    iget-object p1, p0, Lfreemarker/template/utility/DateUtil$for;->do:Ljava/util/GregorianCalendar;

    return-object p1
.end method
