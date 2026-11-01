.class Lfreemarker/core/l4$if;
.super Lfreemarker/core/m0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/l4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "if"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Template processing thread \"interrupted\" flag was set."

    .line 1
    invoke-direct {p0, v0}, Lfreemarker/core/m0;-><init>(Ljava/lang/String;)V

    return-void
.end method
