.class Lfreemarker/core/g$else$do;
.super Lfreemarker/core/g$do;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/g$else;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "do"
.end annotation


# direct methods
.method public constructor <init>(Lfreemarker/core/return;Ljava/lang/String;Lfreemarker/core/d0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lfreemarker/core/g$do;-><init>(Lfreemarker/core/return;Ljava/lang/String;Lfreemarker/core/d0;)V

    return-void
.end method


# virtual methods
.method public do(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/core/g$do;->if:Ljava/lang/String;

    invoke-static {v0, p1}, Lfreemarker/template/utility/super;->goto(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
