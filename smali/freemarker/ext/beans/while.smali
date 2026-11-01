.class final Lfreemarker/ext/beans/while;
.super Lfreemarker/ext/beans/default;
.source "SourceFile"


# static fields
.field public static final do:Lfreemarker/ext/beans/while;

.field public static final if:Lfreemarker/ext/beans/while;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lfreemarker/ext/beans/while;

    invoke-direct {v0}, Lfreemarker/ext/beans/while;-><init>()V

    sput-object v0, Lfreemarker/ext/beans/while;->do:Lfreemarker/ext/beans/while;

    .line 2
    new-instance v0, Lfreemarker/ext/beans/while;

    invoke-direct {v0}, Lfreemarker/ext/beans/while;-><init>()V

    sput-object v0, Lfreemarker/ext/beans/while;->if:Lfreemarker/ext/beans/while;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/ext/beans/default;-><init>()V

    return-void
.end method
