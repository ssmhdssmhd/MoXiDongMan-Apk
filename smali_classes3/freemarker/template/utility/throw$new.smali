.class Lfreemarker/template/utility/throw$new;
.super Lfreemarker/template/utility/throw$if;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/template/utility/throw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "new"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfreemarker/template/utility/throw$if<",
        "Lfreemarker/template/TemplateHashModel;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lfreemarker/template/TemplateHashModel;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lfreemarker/template/utility/throw$if;-><init>(Ljava/util/List;)V

    return-void
.end method
