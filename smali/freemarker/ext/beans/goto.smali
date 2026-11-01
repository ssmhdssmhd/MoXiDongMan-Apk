.class Lfreemarker/ext/beans/goto;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final do:Lfreemarker/ext/beans/try;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lfreemarker/ext/beans/try;

    invoke-direct {v0}, Lfreemarker/ext/beans/try;-><init>()V

    sput-object v0, Lfreemarker/ext/beans/goto;->do:Lfreemarker/ext/beans/try;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
