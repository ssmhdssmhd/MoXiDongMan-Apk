.class Lfreemarker/cache/switch$if;
.super Lfreemarker/cache/switch;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/cache/switch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "if"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/cache/switch;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lfreemarker/cache/switch$do;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lfreemarker/cache/switch$if;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Lfreemarker/cache/return;)Lfreemarker/cache/static;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lfreemarker/cache/return;->new()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lfreemarker/cache/return;->for()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lfreemarker/cache/return;->case(Ljava/lang/String;Ljava/util/Locale;)Lfreemarker/cache/static;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "TemplateLookupStrategy.DEFAULT_2_3_0"

    return-object v0
.end method
