.class Lfreemarker/debug/impl/if$if;
.super Lfreemarker/debug/impl/if;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/debug/impl/if;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "if"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/debug/impl/if;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lfreemarker/debug/impl/if$do;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lfreemarker/debug/impl/if$if;-><init>()V

    return-void
.end method


# virtual methods
.method public else()V
    .locals 0

    return-void
.end method

.method public for(Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 1
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p1
.end method

.method public this(Lfreemarker/core/d0;Ljava/lang/String;I)Z
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public try(Lfreemarker/template/static;)V
    .locals 0

    return-void
.end method
