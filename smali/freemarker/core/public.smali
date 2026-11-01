.class Lfreemarker/core/public;
.super Lfreemarker/core/m0;
.source "SourceFile"


# static fields
.field public static final BREAK_INSTANCE:Lfreemarker/core/public;

.field public static final CONTINUE_INSTANCE:Lfreemarker/core/public;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lfreemarker/core/public;

    invoke-direct {v0}, Lfreemarker/core/public;-><init>()V

    sput-object v0, Lfreemarker/core/public;->BREAK_INSTANCE:Lfreemarker/core/public;

    .line 2
    new-instance v0, Lfreemarker/core/public;

    invoke-direct {v0}, Lfreemarker/core/public;-><init>()V

    sput-object v0, Lfreemarker/core/public;->CONTINUE_INSTANCE:Lfreemarker/core/public;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/core/m0;-><init>()V

    return-void
.end method
