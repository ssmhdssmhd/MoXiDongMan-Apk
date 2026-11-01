.class abstract Lfreemarker/core/t0;
.super Lfreemarker/core/a4;
.source "SourceFile"


# static fields
.field private static final do:Ljava/lang/Object;

.field private static final if:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lfreemarker/core/t0;->do:Ljava/lang/Object;

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lfreemarker/core/t0;->if:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/core/a4;-><init>()V

    return-void
.end method


# virtual methods
.method public for(Lfreemarker/core/d0;)Lfreemarker/template/utility/DateUtil$DateToISO8601CalendarFactory;
    .locals 2

    .line 1
    sget-object v0, Lfreemarker/core/t0;->do:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lfreemarker/core/d0;->C1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfreemarker/template/utility/DateUtil$DateToISO8601CalendarFactory;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lfreemarker/template/utility/DateUtil$for;

    invoke-direct {v1}, Lfreemarker/template/utility/DateUtil$for;-><init>()V

    .line 3
    invoke-virtual {p1, v0, v1}, Lfreemarker/core/d0;->n3(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v1
.end method

.method public if(Lfreemarker/core/d0;)Lfreemarker/template/utility/DateUtil$CalendarFieldsToDateConverter;
    .locals 2

    .line 1
    sget-object v0, Lfreemarker/core/t0;->if:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lfreemarker/core/d0;->C1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfreemarker/template/utility/DateUtil$CalendarFieldsToDateConverter;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lfreemarker/template/utility/DateUtil$if;

    invoke-direct {v1}, Lfreemarker/template/utility/DateUtil$if;-><init>()V

    .line 3
    invoke-virtual {p1, v0, v1}, Lfreemarker/core/d0;->n3(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v1
.end method
