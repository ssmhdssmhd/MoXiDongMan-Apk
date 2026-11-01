.class abstract Lfreemarker/core/return;
.super Lfreemarker/core/h0;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final break:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final catch:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final class:I = 0x11d

.field public static final const:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lfreemarker/core/return;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public goto:Lfreemarker/core/h0;

.field public this:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 15

    .line 1
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    sput-object v0, Lfreemarker/core/return;->break:Ljava/util/Set;

    .line 2
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    sput-object v0, Lfreemarker/core/return;->catch:Ljava/util/Set;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x1ac

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Ljava/util/HashMap;-><init>(IF)V

    sput-object v0, Lfreemarker/core/return;->const:Ljava/util/HashMap;

    .line 4
    new-instance v1, Lfreemarker/core/c$for;

    invoke-direct {v1}, Lfreemarker/core/c$for;-><init>()V

    const-string v2, "abs"

    invoke-static {v2, v1}, Lfreemarker/core/return;->o(Ljava/lang/String;Lfreemarker/core/return;)V

    .line 5
    new-instance v1, Lfreemarker/core/h$do;

    invoke-direct {v1}, Lfreemarker/core/h$do;-><init>()V

    const-string v2, "absolute_template_name"

    const-string v3, "absoluteTemplateName"

    invoke-static {v2, v3, v1}, Lfreemarker/core/return;->p(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/return;)V

    .line 6
    new-instance v1, Lfreemarker/core/b$if;

    invoke-direct {v1}, Lfreemarker/core/b$if;-><init>()V

    const-string v2, "ancestors"

    invoke-static {v2, v1}, Lfreemarker/core/return;->o(Ljava/lang/String;Lfreemarker/core/return;)V

    .line 7
    new-instance v1, Lfreemarker/core/a$if;

    invoke-direct {v1}, Lfreemarker/core/a$if;-><init>()V

    const-string v2, "api"

    invoke-static {v2, v1}, Lfreemarker/core/return;->o(Ljava/lang/String;Lfreemarker/core/return;)V

    .line 8
    new-instance v1, Lfreemarker/core/h$if;

    invoke-direct {v1}, Lfreemarker/core/h$if;-><init>()V

    const-string v2, "boolean"

    invoke-static {v2, v1}, Lfreemarker/core/return;->o(Ljava/lang/String;Lfreemarker/core/return;)V

    .line 9
    new-instance v1, Lfreemarker/core/c$new;

    invoke-direct {v1}, Lfreemarker/core/c$new;-><init>()V

    const-string v2, "byte"

    invoke-static {v2, v1}, Lfreemarker/core/return;->o(Ljava/lang/String;Lfreemarker/core/return;)V

    .line 10
    new-instance v1, Lfreemarker/core/a$for;

    invoke-direct {v1}, Lfreemarker/core/a$for;-><init>()V

    const-string v2, "c"

    invoke-static {v2, v1}, Lfreemarker/core/return;->o(Ljava/lang/String;Lfreemarker/core/return;)V

    .line 11
    new-instance v1, Lfreemarker/core/f$for;

    invoke-direct {v1}, Lfreemarker/core/f$for;-><init>()V

    const-string v2, "cap_first"

    const-string v3, "capFirst"

    invoke-static {v2, v3, v1}, Lfreemarker/core/return;->p(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/return;)V

    .line 12
    new-instance v1, Lfreemarker/core/f$new;

    invoke-direct {v1}, Lfreemarker/core/f$new;-><init>()V

    const-string v2, "capitalize"

    invoke-static {v2, v1}, Lfreemarker/core/return;->o(Ljava/lang/String;Lfreemarker/core/return;)V

    .line 13
    new-instance v1, Lfreemarker/core/c$try;

    invoke-direct {v1}, Lfreemarker/core/c$try;-><init>()V

    const-string v2, "ceiling"

    invoke-static {v2, v1}, Lfreemarker/core/return;->o(Ljava/lang/String;Lfreemarker/core/return;)V

    .line 14
    new-instance v1, Lfreemarker/core/b$for;

    invoke-direct {v1}, Lfreemarker/core/b$for;-><init>()V

    const-string v2, "children"

    invoke-static {v2, v1}, Lfreemarker/core/return;->o(Ljava/lang/String;Lfreemarker/core/return;)V

    .line 15
    new-instance v1, Lfreemarker/core/f$try;

    invoke-direct {v1}, Lfreemarker/core/f$try;-><init>()V

    const-string v2, "chop_linebreak"

    const-string v3, "chopLinebreak"

    invoke-static {v2, v3, v1}, Lfreemarker/core/return;->p(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/return;)V

    .line 16
    new-instance v1, Lfreemarker/core/f$case;

    invoke-direct {v1}, Lfreemarker/core/f$case;-><init>()V

    const-string v2, "contains"

    invoke-static {v2, v1}, Lfreemarker/core/return;->o(Ljava/lang/String;Lfreemarker/core/return;)V

    .line 17
    new-instance v1, Lfreemarker/core/a$new;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lfreemarker/core/a$new;-><init>(I)V

    const-string v3, "date"

    invoke-static {v3, v1}, Lfreemarker/core/return;->o(Ljava/lang/String;Lfreemarker/core/return;)V

    .line 18
    new-instance v1, Lfreemarker/core/protected$if;

    invoke-direct {v1, v2}, Lfreemarker/core/protected$if;-><init>(I)V

    const-string v3, "date_if_unknown"

    const-string v4, "dateIfUnknown"

    invoke-static {v3, v4, v1}, Lfreemarker/core/return;->p(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/return;)V

    .line 19
    new-instance v1, Lfreemarker/core/a$new;

    const/4 v3, 0x3

    invoke-direct {v1, v3}, Lfreemarker/core/a$new;-><init>(I)V

    const-string v4, "datetime"

    invoke-static {v4, v1}, Lfreemarker/core/return;->o(Ljava/lang/String;Lfreemarker/core/return;)V

    .line 20
    new-instance v1, Lfreemarker/core/protected$if;

    invoke-direct {v1, v3}, Lfreemarker/core/protected$if;-><init>(I)V

    const-string v4, "datetime_if_unknown"

    const-string v5, "datetimeIfUnknown"

    invoke-static {v4, v5, v1}, Lfreemarker/core/return;->p(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/return;)V

    .line 21
    new-instance v1, Lfreemarker/core/transient$for;

    invoke-direct {v1}, Lfreemarker/core/transient$for;-><init>()V

    const-string v4, "default"

    invoke-static {v4, v1}, Lfreemarker/core/return;->o(Ljava/lang/String;Lfreemarker/core/return;)V

    .line 22
    new-instance v1, Lfreemarker/core/c$case;

    invoke-direct {v1}, Lfreemarker/core/c$case;-><init>()V

    const-string v4, "double"

    invoke-static {v4, v1}, Lfreemarker/core/return;->o(Ljava/lang/String;Lfreemarker/core/return;)V

    .line 23
    new-instance v1, Lfreemarker/core/e$try;

    invoke-direct {v1}, Lfreemarker/core/e$try;-><init>()V

    const-string v4, "drop_while"

    const-string v5, "dropWhile"

    invoke-static {v4, v5, v1}, Lfreemarker/core/return;->p(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/return;)V

    .line 24
    new-instance v1, Lfreemarker/core/f$else;

    invoke-direct {v1}, Lfreemarker/core/f$else;-><init>()V

    const-string v4, "ends_with"

    const-string v5, "endsWith"

    invoke-static {v4, v5, v1}, Lfreemarker/core/return;->p(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/return;)V

    .line 25
    new-instance v1, Lfreemarker/core/f$goto;

    invoke-direct {v1}, Lfreemarker/core/f$goto;-><init>()V

    const-string v4, "ensure_ends_with"

    const-string v5, "ensureEndsWith"

    invoke-static {v4, v5, v1}, Lfreemarker/core/return;->p(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/return;)V

    .line 26
    new-instance v1, Lfreemarker/core/f$this;

    invoke-direct {v1}, Lfreemarker/core/f$this;-><init>()V

    const-string v4, "ensure_starts_with"

    const-string v5, "ensureStartsWith"

    invoke-static {v4, v5, v1}, Lfreemarker/core/return;->p(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/return;)V

    .line 27
    new-instance v1, Lfreemarker/core/d$if;

    invoke-direct {v1}, Lfreemarker/core/d$if;-><init>()V

    const-string v4, "esc"

    invoke-static {v4, v1}, Lfreemarker/core/return;->o(Ljava/lang/String;Lfreemarker/core/return;)V

    .line 28
    new-instance v1, Lfreemarker/core/h$for;

    invoke-direct {v1}, Lfreemarker/core/h$for;-><init>()V

    const-string v4, "eval"

    invoke-static {v4, v1}, Lfreemarker/core/return;->o(Ljava/lang/String;Lfreemarker/core/return;)V

    .line 29
    new-instance v1, Lfreemarker/core/transient$new;

    invoke-direct {v1}, Lfreemarker/core/transient$new;-><init>()V

    const-string v4, "exists"

    invoke-static {v4, v1}, Lfreemarker/core/return;->o(Ljava/lang/String;Lfreemarker/core/return;)V

    .line 30
    new-instance v1, Lfreemarker/core/e$case;

    invoke-direct {v1}, Lfreemarker/core/e$case;-><init>()V

    const-string v4, "filter"

    invoke-static {v4, v1}, Lfreemarker/core/return;->o(Ljava/lang/String;Lfreemarker/core/return;)V

    .line 31
    new-instance v1, Lfreemarker/core/e$else;

    invoke-direct {v1}, Lfreemarker/core/e$else;-><init>()V

    const-string v4, "first"

    invoke-static {v4, v1}, Lfreemarker/core/return;->o(Ljava/lang/String;Lfreemarker/core/return;)V

    .line 32
    new-instance v1, Lfreemarker/core/c$else;

    invoke-direct {v1}, Lfreemarker/core/c$else;-><init>()V

    const-string v4, "float"

    invoke-static {v4, v1}, Lfreemarker/core/return;->o(Ljava/lang/String;Lfreemarker/core/return;)V

    .line 33
    new-instance v1, Lfreemarker/core/c$goto;

    invoke-direct {v1}, Lfreemarker/core/c$goto;-><init>()V

    const-string v4, "floor"

    invoke-static {v4, v1}, Lfreemarker/core/return;->o(Ljava/lang/String;Lfreemarker/core/return;)V

    .line 34
    new-instance v1, Lfreemarker/core/e$new;

    invoke-direct {v1}, Lfreemarker/core/e$new;-><init>()V

    const-string v4, "chunk"

    invoke-static {v4, v1}, Lfreemarker/core/return;->o(Ljava/lang/String;Lfreemarker/core/return;)V

    .line 35
    new-instance v1, Lfreemarker/core/instanceof$for;

    invoke-direct {v1}, Lfreemarker/core/instanceof$for;-><init>()V

    const-string v4, "counter"

    invoke-static {v4, v1}, Lfreemarker/core/return;->o(Ljava/lang/String;Lfreemarker/core/return;)V

    .line 36
    new-instance v1, Lfreemarker/core/instanceof$break;

    invoke-direct {v1}, Lfreemarker/core/instanceof$break;-><init>()V

    const-string v4, "item_cycle"

    const-string v5, "itemCycle"

    invoke-static {v4, v5, v1}, Lfreemarker/core/return;->p(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/return;)V

    .line 37
    new-instance v1, Lfreemarker/core/a$try;

    invoke-direct {v1}, Lfreemarker/core/a$try;-><init>()V

    const-string v4, "has_api"

    const-string v5, "hasApi"

    invoke-static {v4, v5, v1}, Lfreemarker/core/return;->p(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/return;)V

    .line 38
    new-instance v1, Lfreemarker/core/transient$try;

    invoke-direct {v1}, Lfreemarker/core/transient$try;-><init>()V

    const-string v4, "has_content"

    const-string v5, "hasContent"

    invoke-static {v4, v5, v1}, Lfreemarker/core/return;->p(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/return;)V

    .line 39
    new-instance v1, Lfreemarker/core/instanceof$new;

    invoke-direct {v1}, Lfreemarker/core/instanceof$new;-><init>()V

    const-string v4, "has_next"

    const-string v5, "hasNext"

    invoke-static {v4, v5, v1}, Lfreemarker/core/return;->p(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/return;)V

    .line 40
    new-instance v1, Lfreemarker/core/g$if;

    invoke-direct {v1}, Lfreemarker/core/g$if;-><init>()V

    const-string v4, "html"

    invoke-static {v4, v1}, Lfreemarker/core/return;->o(Ljava/lang/String;Lfreemarker/core/return;)V

    .line 41
    new-instance v1, Lfreemarker/core/transient$case;

    invoke-direct {v1}, Lfreemarker/core/transient$case;-><init>()V

    const-string v5, "if_exists"

    const-string v6, "ifExists"

    invoke-static {v5, v6, v1}, Lfreemarker/core/return;->p(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/return;)V

    .line 42
    new-instance v1, Lfreemarker/core/instanceof$try;

    invoke-direct {v1}, Lfreemarker/core/instanceof$try;-><init>()V

    const-string v5, "index"

    invoke-static {v5, v1}, Lfreemarker/core/return;->o(Ljava/lang/String;Lfreemarker/core/return;)V

    .line 43
    new-instance v1, Lfreemarker/core/f$break;

    const/4 v5, 0x0

    invoke-direct {v1, v5}, Lfreemarker/core/f$break;-><init>(Z)V

    const-string v6, "index_of"

    const-string v7, "indexOf"

    invoke-static {v6, v7, v1}, Lfreemarker/core/return;->p(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/return;)V

    .line 44
    new-instance v1, Lfreemarker/core/c$this;

    invoke-direct {v1}, Lfreemarker/core/c$this;-><init>()V

    const-string v6, "int"

    invoke-static {v6, v1}, Lfreemarker/core/return;->o(Ljava/lang/String;Lfreemarker/core/return;)V

    .line 45
    new-instance v1, Lfreemarker/core/a1;

    invoke-direct {v1}, Lfreemarker/core/a1;-><init>()V

    const-string v6, "interpret"

    invoke-static {v6, v1}, Lfreemarker/core/return;->o(Ljava/lang/String;Lfreemarker/core/return;)V

    .line 46
    new-instance v1, Lfreemarker/core/a$case;

    invoke-direct {v1}, Lfreemarker/core/a$case;-><init>()V

    const-string v6, "is_boolean"

    const-string v7, "isBoolean"

    invoke-static {v6, v7, v1}, Lfreemarker/core/return;->p(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/return;)V

    .line 47
    new-instance v1, Lfreemarker/core/a$else;

    invoke-direct {v1}, Lfreemarker/core/a$else;-><init>()V

    const-string v6, "is_collection"

    const-string v7, "isCollection"

    invoke-static {v6, v7, v1}, Lfreemarker/core/return;->p(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/return;)V

    .line 48
    new-instance v1, Lfreemarker/core/a$goto;

    invoke-direct {v1}, Lfreemarker/core/a$goto;-><init>()V

    const-string v6, "is_collection_ex"

    const-string v7, "isCollectionEx"

    invoke-static {v6, v7, v1}, Lfreemarker/core/return;->p(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/return;)V

    .line 49
    new-instance v1, Lfreemarker/core/a$this;

    invoke-direct {v1}, Lfreemarker/core/a$this;-><init>()V

    const-string v6, "is_date"

    const-string v7, "isDate"

    .line 50
    invoke-static {v6, v7, v1}, Lfreemarker/core/return;->p(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/return;)V

    const-string v6, "is_date_like"

    const-string v7, "isDateLike"

    .line 51
    invoke-static {v6, v7, v1}, Lfreemarker/core/return;->p(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/return;)V

    .line 52
    new-instance v1, Lfreemarker/core/a$break;

    invoke-direct {v1, v2}, Lfreemarker/core/a$break;-><init>(I)V

    const-string v6, "is_date_only"

    const-string v7, "isDateOnly"

    invoke-static {v6, v7, v1}, Lfreemarker/core/return;->p(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/return;)V

    .line 53
    new-instance v1, Lfreemarker/core/instanceof$case;

    invoke-direct {v1}, Lfreemarker/core/instanceof$case;-><init>()V

    const-string v6, "is_even_item"

    const-string v7, "isEvenItem"

    invoke-static {v6, v7, v1}, Lfreemarker/core/return;->p(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/return;)V

    .line 54
    new-instance v1, Lfreemarker/core/instanceof$else;

    invoke-direct {v1}, Lfreemarker/core/instanceof$else;-><init>()V

    const-string v6, "is_first"

    const-string v7, "isFirst"

    invoke-static {v6, v7, v1}, Lfreemarker/core/return;->p(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/return;)V

    .line 55
    new-instance v1, Lfreemarker/core/instanceof$goto;

    invoke-direct {v1}, Lfreemarker/core/instanceof$goto;-><init>()V

    const-string v6, "is_last"

    const-string v7, "isLast"

    invoke-static {v6, v7, v1}, Lfreemarker/core/return;->p(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/return;)V

    .line 56
    new-instance v1, Lfreemarker/core/a$break;

    invoke-direct {v1, v5}, Lfreemarker/core/a$break;-><init>(I)V

    const-string v6, "is_unknown_date_like"

    const-string v7, "isUnknownDateLike"

    invoke-static {v6, v7, v1}, Lfreemarker/core/return;->p(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/return;)V

    .line 57
    new-instance v1, Lfreemarker/core/a$break;

    invoke-direct {v1, v3}, Lfreemarker/core/a$break;-><init>(I)V

    const-string v6, "is_datetime"

    const-string v7, "isDatetime"

    invoke-static {v6, v7, v1}, Lfreemarker/core/return;->p(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/return;)V

    .line 58
    new-instance v1, Lfreemarker/core/a$catch;

    invoke-direct {v1}, Lfreemarker/core/a$catch;-><init>()V

    const-string v6, "is_directive"

    const-string v7, "isDirective"

    invoke-static {v6, v7, v1}, Lfreemarker/core/return;->p(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/return;)V

    .line 59
    new-instance v1, Lfreemarker/core/a$class;

    invoke-direct {v1}, Lfreemarker/core/a$class;-><init>()V

    const-string v6, "is_enumerable"

    const-string v7, "isEnumerable"

    invoke-static {v6, v7, v1}, Lfreemarker/core/return;->p(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/return;)V

    .line 60
    new-instance v1, Lfreemarker/core/a$final;

    invoke-direct {v1}, Lfreemarker/core/a$final;-><init>()V

    const-string v6, "is_hash_ex"

    const-string v7, "isHashEx"

    invoke-static {v6, v7, v1}, Lfreemarker/core/return;->p(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/return;)V

    .line 61
    new-instance v1, Lfreemarker/core/a$const;

    invoke-direct {v1}, Lfreemarker/core/a$const;-><init>()V

    const-string v6, "is_hash"

    const-string v7, "isHash"

    invoke-static {v6, v7, v1}, Lfreemarker/core/return;->p(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/return;)V

    .line 62
    new-instance v1, Lfreemarker/core/c$break;

    invoke-direct {v1}, Lfreemarker/core/c$break;-><init>()V

    const-string v6, "is_infinite"

    const-string v7, "isInfinite"

    invoke-static {v6, v7, v1}, Lfreemarker/core/return;->p(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/return;)V

    .line 63
    new-instance v1, Lfreemarker/core/a$super;

    invoke-direct {v1}, Lfreemarker/core/a$super;-><init>()V

    const-string v6, "is_indexable"

    const-string v7, "isIndexable"

    invoke-static {v6, v7, v1}, Lfreemarker/core/return;->p(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/return;)V

    .line 64
    new-instance v1, Lfreemarker/core/a$throw;

    invoke-direct {v1}, Lfreemarker/core/a$throw;-><init>()V

    const-string v6, "is_macro"

    const-string v7, "isMacro"

    invoke-static {v6, v7, v1}, Lfreemarker/core/return;->p(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/return;)V

    .line 65
    new-instance v1, Lfreemarker/core/a$while;

    invoke-direct {v1}, Lfreemarker/core/a$while;-><init>()V

    const-string v6, "is_markup_output"

    const-string v7, "isMarkupOutput"

    invoke-static {v6, v7, v1}, Lfreemarker/core/return;->p(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/return;)V

    .line 66
    new-instance v1, Lfreemarker/core/a$import;

    invoke-direct {v1}, Lfreemarker/core/a$import;-><init>()V

    const-string v6, "is_method"

    const-string v7, "isMethod"

    invoke-static {v6, v7, v1}, Lfreemarker/core/return;->p(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/return;)V

    .line 67
    new-instance v1, Lfreemarker/core/c$catch;

    invoke-direct {v1}, Lfreemarker/core/c$catch;-><init>()V

    const-string v6, "is_nan"

    const-string v7, "isNan"

    invoke-static {v6, v7, v1}, Lfreemarker/core/return;->p(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/return;)V

    .line 68
    new-instance v1, Lfreemarker/core/a$native;

    invoke-direct {v1}, Lfreemarker/core/a$native;-><init>()V

    const-string v6, "is_node"

    const-string v7, "isNode"

    invoke-static {v6, v7, v1}, Lfreemarker/core/return;->p(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/return;)V

    .line 69
    new-instance v1, Lfreemarker/core/a$public;

    invoke-direct {v1}, Lfreemarker/core/a$public;-><init>()V

    const-string v6, "is_number"

    const-string v7, "isNumber"

    invoke-static {v6, v7, v1}, Lfreemarker/core/return;->p(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/return;)V

    .line 70
    new-instance v1, Lfreemarker/core/instanceof$this;

    invoke-direct {v1}, Lfreemarker/core/instanceof$this;-><init>()V

    const-string v6, "is_odd_item"

    const-string v7, "isOddItem"

    invoke-static {v6, v7, v1}, Lfreemarker/core/return;->p(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/return;)V

    .line 71
    new-instance v1, Lfreemarker/core/a$return;

    invoke-direct {v1}, Lfreemarker/core/a$return;-><init>()V

    const-string v6, "is_sequence"

    const-string v7, "isSequence"

    invoke-static {v6, v7, v1}, Lfreemarker/core/return;->p(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/return;)V

    .line 72
    new-instance v1, Lfreemarker/core/a$static;

    invoke-direct {v1}, Lfreemarker/core/a$static;-><init>()V

    const-string v6, "is_string"

    const-string v7, "isString"

    invoke-static {v6, v7, v1}, Lfreemarker/core/return;->p(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/return;)V

    .line 73
    new-instance v1, Lfreemarker/core/a$break;

    const/4 v6, 0x1

    invoke-direct {v1, v6}, Lfreemarker/core/a$break;-><init>(I)V

    const-string v7, "is_time"

    const-string v8, "isTime"

    invoke-static {v7, v8, v1}, Lfreemarker/core/return;->p(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/return;)V

    .line 74
    new-instance v1, Lfreemarker/core/a$switch;

    invoke-direct {v1}, Lfreemarker/core/a$switch;-><init>()V

    const-string v7, "is_transform"

    const-string v8, "isTransform"

    invoke-static {v7, v8, v1}, Lfreemarker/core/return;->p(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/return;)V

    .line 75
    new-instance v1, Lfreemarker/core/protected$new;

    const/4 v7, 0x0

    const/4 v8, 0x6

    invoke-direct {v1, v7, v8, v6}, Lfreemarker/core/protected$new;-><init>(Ljava/lang/Boolean;IZ)V

    const-string v9, "iso_utc"

    const-string v10, "isoUtc"

    invoke-static {v9, v10, v1}, Lfreemarker/core/return;->p(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/return;)V

    .line 76
    new-instance v1, Lfreemarker/core/protected$new;

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v1, v9, v8, v6}, Lfreemarker/core/protected$new;-><init>(Ljava/lang/Boolean;IZ)V

    const-string v9, "iso_utc_fz"

    const-string v10, "isoUtcFZ"

    invoke-static {v9, v10, v1}, Lfreemarker/core/return;->p(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/return;)V

    .line 77
    new-instance v1, Lfreemarker/core/protected$new;

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v1, v9, v8, v6}, Lfreemarker/core/protected$new;-><init>(Ljava/lang/Boolean;IZ)V

    const-string v10, "iso_utc_nz"

    const-string v11, "isoUtcNZ"

    invoke-static {v10, v11, v1}, Lfreemarker/core/return;->p(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/return;)V

    .line 78
    new-instance v1, Lfreemarker/core/protected$new;

    const/4 v10, 0x7

    invoke-direct {v1, v7, v10, v6}, Lfreemarker/core/protected$new;-><init>(Ljava/lang/Boolean;IZ)V

    const-string v11, "iso_utc_ms"

    const-string v12, "isoUtcMs"

    invoke-static {v11, v12, v1}, Lfreemarker/core/return;->p(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/return;)V

    .line 79
    new-instance v1, Lfreemarker/core/protected$new;

    invoke-direct {v1, v9, v10, v6}, Lfreemarker/core/protected$new;-><init>(Ljava/lang/Boolean;IZ)V

    const-string v11, "iso_utc_ms_nz"

    const-string v12, "isoUtcMsNZ"

    invoke-static {v11, v12, v1}, Lfreemarker/core/return;->p(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/return;)V

    .line 80
    new-instance v1, Lfreemarker/core/protected$new;

    const/4 v11, 0x5

    invoke-direct {v1, v7, v11, v6}, Lfreemarker/core/protected$new;-><init>(Ljava/lang/Boolean;IZ)V

    const-string v12, "iso_utc_m"

    const-string v13, "isoUtcM"

    invoke-static {v12, v13, v1}, Lfreemarker/core/return;->p(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/return;)V

    .line 81
    new-instance v1, Lfreemarker/core/protected$new;

    invoke-direct {v1, v9, v11, v6}, Lfreemarker/core/protected$new;-><init>(Ljava/lang/Boolean;IZ)V

    const-string v12, "iso_utc_m_nz"

    const-string v13, "isoUtcMNZ"

    invoke-static {v12, v13, v1}, Lfreemarker/core/return;->p(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/return;)V

    .line 82
    new-instance v1, Lfreemarker/core/protected$new;

    const/4 v12, 0x4

    invoke-direct {v1, v7, v12, v6}, Lfreemarker/core/protected$new;-><init>(Ljava/lang/Boolean;IZ)V

    const-string v13, "iso_utc_h"

    const-string v14, "isoUtcH"

    invoke-static {v13, v14, v1}, Lfreemarker/core/return;->p(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/return;)V

    .line 83
    new-instance v1, Lfreemarker/core/protected$new;

    invoke-direct {v1, v9, v12, v6}, Lfreemarker/core/protected$new;-><init>(Ljava/lang/Boolean;IZ)V

    const-string v13, "iso_utc_h_nz"

    const-string v14, "isoUtcHNZ"

    invoke-static {v13, v14, v1}, Lfreemarker/core/return;->p(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/return;)V

    .line 84
    new-instance v1, Lfreemarker/core/protected$new;

    invoke-direct {v1, v7, v8, v5}, Lfreemarker/core/protected$new;-><init>(Ljava/lang/Boolean;IZ)V

    const-string v13, "iso_local"

    const-string v14, "isoLocal"

    invoke-static {v13, v14, v1}, Lfreemarker/core/return;->p(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/return;)V

    .line 85
    new-instance v1, Lfreemarker/core/protected$new;

    invoke-direct {v1, v9, v8, v5}, Lfreemarker/core/protected$new;-><init>(Ljava/lang/Boolean;IZ)V

    const-string v13, "iso_local_nz"

    const-string v14, "isoLocalNZ"

    invoke-static {v13, v14, v1}, Lfreemarker/core/return;->p(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/return;)V

    .line 86
    new-instance v1, Lfreemarker/core/protected$new;

    invoke-direct {v1, v7, v10, v5}, Lfreemarker/core/protected$new;-><init>(Ljava/lang/Boolean;IZ)V

    const-string v13, "iso_local_ms"

    const-string v14, "isoLocalMs"

    invoke-static {v13, v14, v1}, Lfreemarker/core/return;->p(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/return;)V

    .line 87
    new-instance v1, Lfreemarker/core/protected$new;

    invoke-direct {v1, v9, v10, v5}, Lfreemarker/core/protected$new;-><init>(Ljava/lang/Boolean;IZ)V

    const-string v13, "iso_local_ms_nz"

    const-string v14, "isoLocalMsNZ"

    invoke-static {v13, v14, v1}, Lfreemarker/core/return;->p(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/return;)V

    .line 88
    new-instance v1, Lfreemarker/core/protected$new;

    invoke-direct {v1, v7, v11, v5}, Lfreemarker/core/protected$new;-><init>(Ljava/lang/Boolean;IZ)V

    const-string v13, "iso_local_m"

    const-string v14, "isoLocalM"

    invoke-static {v13, v14, v1}, Lfreemarker/core/return;->p(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/return;)V

    .line 89
    new-instance v1, Lfreemarker/core/protected$new;

    invoke-direct {v1, v9, v11, v5}, Lfreemarker/core/protected$new;-><init>(Ljava/lang/Boolean;IZ)V

    const-string v13, "iso_local_m_nz"

    const-string v14, "isoLocalMNZ"

    invoke-static {v13, v14, v1}, Lfreemarker/core/return;->p(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/return;)V

    .line 90
    new-instance v1, Lfreemarker/core/protected$new;

    invoke-direct {v1, v7, v12, v5}, Lfreemarker/core/protected$new;-><init>(Ljava/lang/Boolean;IZ)V

    const-string v13, "iso_local_h"

    const-string v14, "isoLocalH"

    invoke-static {v13, v14, v1}, Lfreemarker/core/return;->p(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/return;)V

    .line 91
    new-instance v1, Lfreemarker/core/protected$new;

    invoke-direct {v1, v9, v12, v5}, Lfreemarker/core/protected$new;-><init>(Ljava/lang/Boolean;IZ)V

    const-string v13, "iso_local_h_nz"

    const-string v14, "isoLocalHNZ"

    invoke-static {v13, v14, v1}, Lfreemarker/core/return;->p(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/return;)V

    .line 92
    new-instance v1, Lfreemarker/core/protected$for;

    invoke-direct {v1, v7, v8}, Lfreemarker/core/protected$for;-><init>(Ljava/lang/Boolean;I)V

    const-string v13, "iso"

    invoke-static {v13, v1}, Lfreemarker/core/return;->o(Ljava/lang/String;Lfreemarker/core/return;)V

    .line 93
    new-instance v1, Lfreemarker/core/protected$for;

    invoke-direct {v1, v9, v8}, Lfreemarker/core/protected$for;-><init>(Ljava/lang/Boolean;I)V

    const-string v8, "iso_nz"

    const-string v13, "isoNZ"

    invoke-static {v8, v13, v1}, Lfreemarker/core/return;->p(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/return;)V

    .line 94
    new-instance v1, Lfreemarker/core/protected$for;

    invoke-direct {v1, v7, v10}, Lfreemarker/core/protected$for;-><init>(Ljava/lang/Boolean;I)V

    const-string v8, "iso_ms"

    const-string v13, "isoMs"

    invoke-static {v8, v13, v1}, Lfreemarker/core/return;->p(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/return;)V

    .line 95
    new-instance v1, Lfreemarker/core/protected$for;

    invoke-direct {v1, v9, v10}, Lfreemarker/core/protected$for;-><init>(Ljava/lang/Boolean;I)V

    const-string v8, "iso_ms_nz"

    const-string v10, "isoMsNZ"

    invoke-static {v8, v10, v1}, Lfreemarker/core/return;->p(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/return;)V

    .line 96
    new-instance v1, Lfreemarker/core/protected$for;

    invoke-direct {v1, v7, v11}, Lfreemarker/core/protected$for;-><init>(Ljava/lang/Boolean;I)V

    const-string v8, "iso_m"

    const-string v10, "isoM"

    invoke-static {v8, v10, v1}, Lfreemarker/core/return;->p(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/return;)V

    .line 97
    new-instance v1, Lfreemarker/core/protected$for;

    invoke-direct {v1, v9, v11}, Lfreemarker/core/protected$for;-><init>(Ljava/lang/Boolean;I)V

    const-string v8, "iso_m_nz"

    const-string v10, "isoMNZ"

    invoke-static {v8, v10, v1}, Lfreemarker/core/return;->p(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/return;)V

    .line 98
    new-instance v1, Lfreemarker/core/protected$for;

    invoke-direct {v1, v7, v12}, Lfreemarker/core/protected$for;-><init>(Ljava/lang/Boolean;I)V

    const-string v7, "iso_h"

    const-string v8, "isoH"

    invoke-static {v7, v8, v1}, Lfreemarker/core/return;->p(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/return;)V

    .line 99
    new-instance v1, Lfreemarker/core/protected$for;

    invoke-direct {v1, v9, v12}, Lfreemarker/core/protected$for;-><init>(Ljava/lang/Boolean;I)V

    const-string v7, "iso_h_nz"

    const-string v8, "isoHNZ"

    invoke-static {v7, v8, v1}, Lfreemarker/core/return;->p(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/return;)V

    .line 100
    new-instance v1, Lfreemarker/core/g$for;

    invoke-direct {v1}, Lfreemarker/core/g$for;-><init>()V

    const-string v7, "j_string"

    const-string v8, "jString"

    invoke-static {v7, v8, v1}, Lfreemarker/core/return;->p(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/return;)V

    .line 101
    new-instance v1, Lfreemarker/core/e$goto;

    invoke-direct {v1}, Lfreemarker/core/e$goto;-><init>()V

    const-string v7, "join"

    invoke-static {v7, v1}, Lfreemarker/core/return;->o(Ljava/lang/String;Lfreemarker/core/return;)V

    .line 102
    new-instance v1, Lfreemarker/core/g$new;

    invoke-direct {v1}, Lfreemarker/core/g$new;-><init>()V

    const-string v7, "js_string"

    const-string v8, "jsString"

    invoke-static {v7, v8, v1}, Lfreemarker/core/return;->p(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/return;)V

    .line 103
    new-instance v1, Lfreemarker/core/g$try;

    invoke-direct {v1}, Lfreemarker/core/g$try;-><init>()V

    const-string v7, "json_string"

    const-string v8, "jsonString"

    invoke-static {v7, v8, v1}, Lfreemarker/core/return;->p(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/return;)V

    .line 104
    new-instance v1, Lfreemarker/core/f$catch;

    invoke-direct {v1}, Lfreemarker/core/f$catch;-><init>()V

    const-string v7, "keep_after"

    const-string v8, "keepAfter"

    invoke-static {v7, v8, v1}, Lfreemarker/core/return;->p(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/return;)V

    .line 105
    new-instance v1, Lfreemarker/core/f$const;

    invoke-direct {v1}, Lfreemarker/core/f$const;-><init>()V

    const-string v7, "keep_before"

    const-string v8, "keepBefore"

    invoke-static {v7, v8, v1}, Lfreemarker/core/return;->p(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/return;)V

    .line 106
    new-instance v1, Lfreemarker/core/f$class;

    invoke-direct {v1}, Lfreemarker/core/f$class;-><init>()V

    const-string v7, "keep_after_last"

    const-string v8, "keepAfterLast"

    invoke-static {v7, v8, v1}, Lfreemarker/core/return;->p(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/return;)V

    .line 107
    new-instance v1, Lfreemarker/core/f$final;

    invoke-direct {v1}, Lfreemarker/core/f$final;-><init>()V

    const-string v7, "keep_before_last"

    const-string v8, "keepBeforeLast"

    invoke-static {v7, v8, v1}, Lfreemarker/core/return;->p(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/return;)V

    .line 108
    new-instance v1, Lfreemarker/core/implements$do;

    invoke-direct {v1}, Lfreemarker/core/implements$do;-><init>()V

    const-string v7, "keys"

    invoke-static {v7, v1}, Lfreemarker/core/return;->o(Ljava/lang/String;Lfreemarker/core/return;)V

    .line 109
    new-instance v1, Lfreemarker/core/f$break;

    invoke-direct {v1, v6}, Lfreemarker/core/f$break;-><init>(Z)V

    const-string v7, "last_index_of"

    const-string v8, "lastIndexOf"

    invoke-static {v7, v8, v1}, Lfreemarker/core/return;->p(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/return;)V

    .line 110
    new-instance v1, Lfreemarker/core/e$this;

    invoke-direct {v1}, Lfreemarker/core/e$this;-><init>()V

    const-string v7, "last"

    invoke-static {v7, v1}, Lfreemarker/core/return;->o(Ljava/lang/String;Lfreemarker/core/return;)V

    .line 111
    new-instance v1, Lfreemarker/core/f$while;

    invoke-direct {v1, v6}, Lfreemarker/core/f$while;-><init>(Z)V

    const-string v7, "left_pad"

    const-string v8, "leftPad"

    invoke-static {v7, v8, v1}, Lfreemarker/core/return;->p(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/return;)V

    .line 112
    new-instance v1, Lfreemarker/core/f$super;

    invoke-direct {v1}, Lfreemarker/core/f$super;-><init>()V

    const-string v7, "length"

    invoke-static {v7, v1}, Lfreemarker/core/return;->o(Ljava/lang/String;Lfreemarker/core/return;)V

    .line 113
    new-instance v1, Lfreemarker/core/c$class;

    invoke-direct {v1}, Lfreemarker/core/c$class;-><init>()V

    const-string v7, "long"

    invoke-static {v7, v1}, Lfreemarker/core/return;->o(Ljava/lang/String;Lfreemarker/core/return;)V

    .line 114
    new-instance v1, Lfreemarker/core/c$const;

    invoke-direct {v1}, Lfreemarker/core/c$const;-><init>()V

    const-string v7, "lower_abc"

    const-string v8, "lowerAbc"

    invoke-static {v7, v8, v1}, Lfreemarker/core/return;->p(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/return;)V

    .line 115
    new-instance v1, Lfreemarker/core/f$throw;

    invoke-direct {v1}, Lfreemarker/core/f$throw;-><init>()V

    const-string v7, "lower_case"

    const-string v8, "lowerCase"

    invoke-static {v7, v8, v1}, Lfreemarker/core/return;->p(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/return;)V

    .line 116
    new-instance v1, Lfreemarker/core/e$break;

    invoke-direct {v1}, Lfreemarker/core/e$break;-><init>()V

    const-string v7, "map"

    invoke-static {v7, v1}, Lfreemarker/core/return;->o(Ljava/lang/String;Lfreemarker/core/return;)V

    .line 117
    new-instance v1, Lfreemarker/core/a$throws;

    invoke-direct {v1}, Lfreemarker/core/a$throws;-><init>()V

    const-string v7, "namespace"

    invoke-static {v7, v1}, Lfreemarker/core/return;->o(Ljava/lang/String;Lfreemarker/core/return;)V

    .line 118
    new-instance v1, Lfreemarker/core/e2;

    invoke-direct {v1}, Lfreemarker/core/e2;-><init>()V

    const-string v7, "new"

    invoke-static {v7, v1}, Lfreemarker/core/return;->o(Ljava/lang/String;Lfreemarker/core/return;)V

    .line 119
    new-instance v1, Lfreemarker/core/synchronized$do;

    invoke-direct {v1}, Lfreemarker/core/synchronized$do;-><init>()V

    const-string v7, "markup_string"

    const-string v8, "markupString"

    invoke-static {v7, v8, v1}, Lfreemarker/core/return;->p(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/return;)V

    .line 120
    new-instance v1, Lfreemarker/core/b$try;

    invoke-direct {v1}, Lfreemarker/core/b$try;-><init>()V

    const-string v7, "node_name"

    const-string v8, "nodeName"

    invoke-static {v7, v8, v1}, Lfreemarker/core/return;->p(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/return;)V

    .line 121
    new-instance v1, Lfreemarker/core/b$case;

    invoke-direct {v1}, Lfreemarker/core/b$case;-><init>()V

    const-string v7, "node_namespace"

    const-string v8, "nodeNamespace"

    invoke-static {v7, v8, v1}, Lfreemarker/core/return;->p(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/return;)V

    .line 122
    new-instance v1, Lfreemarker/core/b$else;

    invoke-direct {v1}, Lfreemarker/core/b$else;-><init>()V

    const-string v7, "node_type"

    const-string v8, "nodeType"

    invoke-static {v7, v8, v1}, Lfreemarker/core/return;->p(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/return;)V

    .line 123
    new-instance v1, Lfreemarker/core/d$for;

    invoke-direct {v1}, Lfreemarker/core/d$for;-><init>()V

    const-string v7, "no_esc"

    const-string v8, "noEsc"

    invoke-static {v7, v8, v1}, Lfreemarker/core/return;->p(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/return;)V

    .line 124
    new-instance v1, Lfreemarker/core/e$catch;

    invoke-direct {v1}, Lfreemarker/core/e$catch;-><init>()V

    const-string v7, "max"

    invoke-static {v7, v1}, Lfreemarker/core/return;->o(Ljava/lang/String;Lfreemarker/core/return;)V

    .line 125
    new-instance v1, Lfreemarker/core/e$class;

    invoke-direct {v1}, Lfreemarker/core/e$class;-><init>()V

    const-string v7, "min"

    invoke-static {v7, v1}, Lfreemarker/core/return;->o(Ljava/lang/String;Lfreemarker/core/return;)V

    .line 126
    new-instance v1, Lfreemarker/core/h$new;

    invoke-direct {v1}, Lfreemarker/core/h$new;-><init>()V

    const-string v7, "number"

    invoke-static {v7, v1}, Lfreemarker/core/return;->o(Ljava/lang/String;Lfreemarker/core/return;)V

    .line 127
    new-instance v1, Lfreemarker/core/c$final;

    invoke-direct {v1, v2}, Lfreemarker/core/c$final;-><init>(I)V

    const-string v2, "number_to_date"

    const-string v7, "numberToDate"

    invoke-static {v2, v7, v1}, Lfreemarker/core/return;->p(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/return;)V

    .line 128
    new-instance v1, Lfreemarker/core/c$final;

    invoke-direct {v1, v6}, Lfreemarker/core/c$final;-><init>(I)V

    const-string v2, "number_to_time"

    const-string v7, "numberToTime"

    invoke-static {v2, v7, v1}, Lfreemarker/core/return;->p(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/return;)V

    .line 129
    new-instance v1, Lfreemarker/core/c$final;

    invoke-direct {v1, v3}, Lfreemarker/core/c$final;-><init>(I)V

    const-string v2, "number_to_datetime"

    const-string v3, "numberToDatetime"

    invoke-static {v2, v3, v1}, Lfreemarker/core/return;->p(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/return;)V

    .line 130
    new-instance v1, Lfreemarker/core/b$goto;

    invoke-direct {v1}, Lfreemarker/core/b$goto;-><init>()V

    const-string v2, "parent"

    invoke-static {v2, v1}, Lfreemarker/core/return;->o(Ljava/lang/String;Lfreemarker/core/return;)V

    .line 131
    new-instance v1, Lfreemarker/core/b$this;

    invoke-direct {v1}, Lfreemarker/core/b$this;-><init>()V

    const-string v2, "previous_sibling"

    const-string v3, "previousSibling"

    invoke-static {v2, v3, v1}, Lfreemarker/core/return;->p(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/return;)V

    .line 132
    new-instance v1, Lfreemarker/core/b$new;

    invoke-direct {v1}, Lfreemarker/core/b$new;-><init>()V

    const-string v2, "next_sibling"

    const-string v3, "nextSibling"

    invoke-static {v2, v3, v1}, Lfreemarker/core/return;->p(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/return;)V

    .line 133
    new-instance v1, Lfreemarker/core/instanceof$catch;

    invoke-direct {v1}, Lfreemarker/core/instanceof$catch;-><init>()V

    const-string v2, "item_parity"

    const-string v3, "itemParity"

    invoke-static {v2, v3, v1}, Lfreemarker/core/return;->p(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/return;)V

    .line 134
    new-instance v1, Lfreemarker/core/instanceof$class;

    invoke-direct {v1}, Lfreemarker/core/instanceof$class;-><init>()V

    const-string v2, "item_parity_cap"

    const-string v3, "itemParityCap"

    invoke-static {v2, v3, v1}, Lfreemarker/core/return;->p(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/return;)V

    .line 135
    new-instance v1, Lfreemarker/core/e$const;

    invoke-direct {v1}, Lfreemarker/core/e$const;-><init>()V

    const-string v2, "reverse"

    invoke-static {v2, v1}, Lfreemarker/core/return;->o(Ljava/lang/String;Lfreemarker/core/return;)V

    .line 136
    new-instance v1, Lfreemarker/core/f$while;

    invoke-direct {v1, v5}, Lfreemarker/core/f$while;-><init>(Z)V

    const-string v2, "right_pad"

    const-string v3, "rightPad"

    invoke-static {v2, v3, v1}, Lfreemarker/core/return;->p(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/return;)V

    .line 137
    new-instance v1, Lfreemarker/core/b$break;

    invoke-direct {v1}, Lfreemarker/core/b$break;-><init>()V

    const-string v2, "root"

    invoke-static {v2, v1}, Lfreemarker/core/return;->o(Ljava/lang/String;Lfreemarker/core/return;)V

    .line 138
    new-instance v1, Lfreemarker/core/c$super;

    invoke-direct {v1}, Lfreemarker/core/c$super;-><init>()V

    const-string v2, "round"

    invoke-static {v2, v1}, Lfreemarker/core/return;->o(Ljava/lang/String;Lfreemarker/core/return;)V

    .line 139
    new-instance v1, Lfreemarker/core/f$native;

    invoke-direct {v1}, Lfreemarker/core/f$native;-><init>()V

    const-string v2, "remove_ending"

    const-string v3, "removeEnding"

    invoke-static {v2, v3, v1}, Lfreemarker/core/return;->p(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/return;)V

    .line 140
    new-instance v1, Lfreemarker/core/f$import;

    invoke-direct {v1}, Lfreemarker/core/f$import;-><init>()V

    const-string v2, "remove_beginning"

    const-string v3, "removeBeginning"

    invoke-static {v2, v3, v1}, Lfreemarker/core/return;->p(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/return;)V

    .line 141
    new-instance v1, Lfreemarker/core/g$case;

    invoke-direct {v1}, Lfreemarker/core/g$case;-><init>()V

    const-string v2, "rtf"

    invoke-static {v2, v1}, Lfreemarker/core/return;->o(Ljava/lang/String;Lfreemarker/core/return;)V

    .line 142
    new-instance v1, Lfreemarker/core/e$final;

    invoke-direct {v1}, Lfreemarker/core/e$final;-><init>()V

    const-string v2, "seq_contains"

    const-string v3, "seqContains"

    invoke-static {v2, v3, v1}, Lfreemarker/core/return;->p(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/return;)V

    .line 143
    new-instance v1, Lfreemarker/core/e$super;

    invoke-direct {v1, v6}, Lfreemarker/core/e$super;-><init>(Z)V

    const-string v2, "seq_index_of"

    const-string v3, "seqIndexOf"

    invoke-static {v2, v3, v1}, Lfreemarker/core/return;->p(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/return;)V

    .line 144
    new-instance v1, Lfreemarker/core/e$super;

    invoke-direct {v1, v5}, Lfreemarker/core/e$super;-><init>(Z)V

    const-string v2, "seq_last_index_of"

    const-string v3, "seqLastIndexOf"

    invoke-static {v2, v3, v1}, Lfreemarker/core/return;->p(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/return;)V

    .line 145
    new-instance v1, Lfreemarker/core/e$throw;

    invoke-direct {v1}, Lfreemarker/core/e$throw;-><init>()V

    const-string v2, "sequence"

    invoke-static {v2, v1}, Lfreemarker/core/return;->o(Ljava/lang/String;Lfreemarker/core/return;)V

    .line 146
    new-instance v1, Lfreemarker/core/c$throw;

    invoke-direct {v1}, Lfreemarker/core/c$throw;-><init>()V

    const-string v2, "short"

    invoke-static {v2, v1}, Lfreemarker/core/return;->o(Ljava/lang/String;Lfreemarker/core/return;)V

    .line 147
    new-instance v1, Lfreemarker/core/a$default;

    invoke-direct {v1}, Lfreemarker/core/a$default;-><init>()V

    const-string v2, "size"

    invoke-static {v2, v1}, Lfreemarker/core/return;->o(Ljava/lang/String;Lfreemarker/core/return;)V

    .line 148
    new-instance v1, Lfreemarker/core/e$import;

    invoke-direct {v1}, Lfreemarker/core/e$import;-><init>()V

    const-string v2, "sort_by"

    const-string v3, "sortBy"

    invoke-static {v2, v3, v1}, Lfreemarker/core/return;->p(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/return;)V

    .line 149
    new-instance v1, Lfreemarker/core/e$while;

    invoke-direct {v1}, Lfreemarker/core/e$while;-><init>()V

    const-string v2, "sort"

    invoke-static {v2, v1}, Lfreemarker/core/return;->o(Ljava/lang/String;Lfreemarker/core/return;)V

    .line 150
    new-instance v1, Lfreemarker/core/f$public;

    invoke-direct {v1}, Lfreemarker/core/f$public;-><init>()V

    const-string v2, "split"

    invoke-static {v2, v1}, Lfreemarker/core/return;->o(Ljava/lang/String;Lfreemarker/core/return;)V

    .line 151
    new-instance v1, Lfreemarker/core/j$do;

    invoke-direct {v1}, Lfreemarker/core/j$do;-><init>()V

    const-string v2, "switch"

    invoke-static {v2, v1}, Lfreemarker/core/return;->o(Ljava/lang/String;Lfreemarker/core/return;)V

    .line 152
    new-instance v1, Lfreemarker/core/f$return;

    invoke-direct {v1}, Lfreemarker/core/f$return;-><init>()V

    const-string v2, "starts_with"

    const-string v3, "startsWith"

    invoke-static {v2, v3, v1}, Lfreemarker/core/return;->p(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/return;)V

    .line 153
    new-instance v1, Lfreemarker/core/a$extends;

    invoke-direct {v1}, Lfreemarker/core/a$extends;-><init>()V

    const-string v2, "string"

    invoke-static {v2, v1}, Lfreemarker/core/return;->o(Ljava/lang/String;Lfreemarker/core/return;)V

    .line 154
    new-instance v1, Lfreemarker/core/f$static;

    invoke-direct {v1}, Lfreemarker/core/f$static;-><init>()V

    const-string v2, "substring"

    invoke-static {v2, v1}, Lfreemarker/core/return;->o(Ljava/lang/String;Lfreemarker/core/return;)V

    .line 155
    new-instance v1, Lfreemarker/core/e$native;

    invoke-direct {v1}, Lfreemarker/core/e$native;-><init>()V

    const-string v2, "take_while"

    const-string v3, "takeWhile"

    invoke-static {v2, v3, v1}, Lfreemarker/core/return;->p(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/return;)V

    .line 156
    new-instance v1, Lfreemarker/core/j$if;

    invoke-direct {v1}, Lfreemarker/core/j$if;-><init>()V

    const-string v2, "then"

    invoke-static {v2, v1}, Lfreemarker/core/return;->o(Ljava/lang/String;Lfreemarker/core/return;)V

    .line 157
    new-instance v1, Lfreemarker/core/a$new;

    invoke-direct {v1, v6}, Lfreemarker/core/a$new;-><init>(I)V

    const-string v2, "time"

    invoke-static {v2, v1}, Lfreemarker/core/return;->o(Ljava/lang/String;Lfreemarker/core/return;)V

    .line 158
    new-instance v1, Lfreemarker/core/protected$if;

    invoke-direct {v1, v6}, Lfreemarker/core/protected$if;-><init>(I)V

    const-string v2, "time_if_unknown"

    const-string v3, "timeIfUnknown"

    invoke-static {v2, v3, v1}, Lfreemarker/core/return;->p(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/return;)V

    .line 159
    new-instance v1, Lfreemarker/core/f$switch;

    invoke-direct {v1}, Lfreemarker/core/f$switch;-><init>()V

    const-string v2, "trim"

    invoke-static {v2, v1}, Lfreemarker/core/return;->o(Ljava/lang/String;Lfreemarker/core/return;)V

    .line 160
    new-instance v1, Lfreemarker/core/f$throws;

    invoke-direct {v1}, Lfreemarker/core/f$throws;-><init>()V

    const-string v2, "truncate"

    invoke-static {v2, v1}, Lfreemarker/core/return;->o(Ljava/lang/String;Lfreemarker/core/return;)V

    .line 161
    new-instance v1, Lfreemarker/core/f$package;

    invoke-direct {v1}, Lfreemarker/core/f$package;-><init>()V

    const-string v2, "truncate_w"

    const-string v3, "truncateW"

    invoke-static {v2, v3, v1}, Lfreemarker/core/return;->p(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/return;)V

    .line 162
    new-instance v1, Lfreemarker/core/f$default;

    invoke-direct {v1}, Lfreemarker/core/f$default;-><init>()V

    const-string v2, "truncate_c"

    const-string v3, "truncateC"

    invoke-static {v2, v3, v1}, Lfreemarker/core/return;->p(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/return;)V

    .line 163
    new-instance v1, Lfreemarker/core/f$finally;

    invoke-direct {v1}, Lfreemarker/core/f$finally;-><init>()V

    const-string v2, "truncate_m"

    const-string v3, "truncateM"

    invoke-static {v2, v3, v1}, Lfreemarker/core/return;->p(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/return;)V

    .line 164
    new-instance v1, Lfreemarker/core/f$private;

    invoke-direct {v1}, Lfreemarker/core/f$private;-><init>()V

    const-string v2, "truncate_w_m"

    const-string v3, "truncateWM"

    invoke-static {v2, v3, v1}, Lfreemarker/core/return;->p(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/return;)V

    .line 165
    new-instance v1, Lfreemarker/core/f$extends;

    invoke-direct {v1}, Lfreemarker/core/f$extends;-><init>()V

    const-string v2, "truncate_c_m"

    const-string v3, "truncateCM"

    invoke-static {v2, v3, v1}, Lfreemarker/core/return;->p(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/return;)V

    .line 166
    new-instance v1, Lfreemarker/core/f$abstract;

    invoke-direct {v1}, Lfreemarker/core/f$abstract;-><init>()V

    const-string v2, "uncap_first"

    const-string v3, "uncapFirst"

    invoke-static {v2, v3, v1}, Lfreemarker/core/return;->p(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/return;)V

    .line 167
    new-instance v1, Lfreemarker/core/c$while;

    invoke-direct {v1}, Lfreemarker/core/c$while;-><init>()V

    const-string v2, "upper_abc"

    const-string v3, "upperAbc"

    invoke-static {v2, v3, v1}, Lfreemarker/core/return;->p(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/return;)V

    .line 168
    new-instance v1, Lfreemarker/core/f$continue;

    invoke-direct {v1}, Lfreemarker/core/f$continue;-><init>()V

    const-string v2, "upper_case"

    const-string v3, "upperCase"

    invoke-static {v2, v3, v1}, Lfreemarker/core/return;->p(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/return;)V

    .line 169
    new-instance v1, Lfreemarker/core/g$else;

    invoke-direct {v1}, Lfreemarker/core/g$else;-><init>()V

    const-string v2, "url"

    invoke-static {v2, v1}, Lfreemarker/core/return;->o(Ljava/lang/String;Lfreemarker/core/return;)V

    .line 170
    new-instance v1, Lfreemarker/core/g$goto;

    invoke-direct {v1}, Lfreemarker/core/g$goto;-><init>()V

    const-string v2, "url_path"

    const-string v3, "urlPath"

    invoke-static {v2, v3, v1}, Lfreemarker/core/return;->p(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/return;)V

    .line 171
    new-instance v1, Lfreemarker/core/implements$if;

    invoke-direct {v1}, Lfreemarker/core/implements$if;-><init>()V

    const-string v2, "values"

    invoke-static {v2, v1}, Lfreemarker/core/return;->o(Ljava/lang/String;Lfreemarker/core/return;)V

    .line 172
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfreemarker/core/return;

    const-string v2, "web_safe"

    const-string v3, "webSafe"

    invoke-static {v2, v3, v1}, Lfreemarker/core/return;->p(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/return;)V

    .line 173
    new-instance v1, Lfreemarker/core/f$strictfp;

    invoke-direct {v1}, Lfreemarker/core/f$strictfp;-><init>()V

    const-string v2, "word_list"

    const-string v3, "wordList"

    invoke-static {v2, v3, v1}, Lfreemarker/core/return;->p(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/return;)V

    .line 174
    new-instance v1, Lfreemarker/core/g$this;

    invoke-direct {v1}, Lfreemarker/core/g$this;-><init>()V

    const-string v2, "xhtml"

    invoke-static {v2, v1}, Lfreemarker/core/return;->o(Ljava/lang/String;Lfreemarker/core/return;)V

    .line 175
    new-instance v1, Lfreemarker/core/g$break;

    invoke-direct {v1}, Lfreemarker/core/g$break;-><init>()V

    const-string v2, "xml"

    invoke-static {v2, v1}, Lfreemarker/core/return;->o(Ljava/lang/String;Lfreemarker/core/return;)V

    .line 176
    new-instance v1, Lfreemarker/core/i$for;

    invoke-direct {v1}, Lfreemarker/core/i$for;-><init>()V

    const-string v2, "matches"

    invoke-static {v2, v1}, Lfreemarker/core/return;->o(Ljava/lang/String;Lfreemarker/core/return;)V

    .line 177
    new-instance v1, Lfreemarker/core/i$if;

    invoke-direct {v1}, Lfreemarker/core/i$if;-><init>()V

    const-string v2, "groups"

    invoke-static {v2, v1}, Lfreemarker/core/return;->o(Ljava/lang/String;Lfreemarker/core/return;)V

    .line 178
    new-instance v1, Lfreemarker/core/i$new;

    invoke-direct {v1}, Lfreemarker/core/i$new;-><init>()V

    const-string v2, "replace"

    invoke-static {v2, v1}, Lfreemarker/core/return;->o(Ljava/lang/String;Lfreemarker/core/return;)V

    .line 179
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v1

    const/16 v2, 0x11d

    if-lt v2, v1, :cond_0

    return-void

    .line 180
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Update NUMBER_OF_BIS! Should be: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfreemarker/core/h0;-><init>()V

    return-void
.end method

.method public static l(ILfreemarker/core/h0;Lfreemarker/core/m4;Lfreemarker/core/k0;)Lfreemarker/core/return;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/h3;
        }
    .end annotation

    .line 1
    iget-object v0, p2, Lfreemarker/core/m4;->image:Ljava/lang/String;

    .line 2
    sget-object v1, Lfreemarker/core/return;->const:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfreemarker/core/return;

    if-nez v2, :cond_6

    .line 3
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Unknown built-in: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lfreemarker/template/utility/super;->synchronized(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Help (latest version): https://freemarker.apache.org/docs/ref_builtins.html; you\'re using FreeMarker "

    .line 4
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-static {}, Lfreemarker/template/do;->a2()Landroid/support/v4/we2;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ".\nThe alphabetical list of built-ins:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 7
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 8
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 9
    iget p3, p3, Lfreemarker/core/k0;->super:I

    const/16 v0, 0xb

    const/16 v1, 0xa

    if-eq p3, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 p3, 0xb

    :goto_0
    const/4 v2, 0x1

    .line 10
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 11
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 12
    invoke-static {v5}, Landroid/support/v4/yk2;->for(Ljava/lang/String;)I

    move-result v6

    const/16 v7, 0xc

    if-ne p3, v7, :cond_2

    if-eq v6, v0, :cond_1

    goto :goto_2

    :cond_2
    if-eq v6, v7, :cond_1

    :goto_2
    if-eqz v2, :cond_3

    const/4 v2, 0x0

    goto :goto_3

    :cond_3
    const-string v6, ", "

    .line 13
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    :goto_3
    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v4, :cond_4

    .line 15
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v4, v6

    .line 16
    :cond_4
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 17
    :cond_5
    new-instance p1, Lfreemarker/core/h3;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p3, 0x0

    invoke-direct {p1, p0, p3, p2}, Lfreemarker/core/h3;-><init>(Ljava/lang/String;Lfreemarker/template/static;Lfreemarker/core/m4;)V

    throw p1

    .line 18
    :cond_6
    :goto_4
    instance-of p2, v2, Lfreemarker/core/ICIChainMember;

    if-eqz p2, :cond_7

    move-object p2, v2

    check-cast p2, Lfreemarker/core/ICIChainMember;

    .line 19
    invoke-interface {p2}, Lfreemarker/core/ICIChainMember;->getMinimumICIVersion()I

    move-result p3

    if-ge p0, p3, :cond_7

    .line 20
    invoke-interface {p2}, Lfreemarker/core/ICIChainMember;->getPreviousICIChainMember()Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Lfreemarker/core/return;

    goto :goto_4

    .line 21
    :cond_7
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfreemarker/core/return;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    iput-object v0, p0, Lfreemarker/core/return;->this:Ljava/lang/String;

    .line 23
    invoke-virtual {p0, p1}, Lfreemarker/core/return;->q(Lfreemarker/core/h0;)V

    return-object p0

    .line 24
    :catch_0
    new-instance p0, Ljava/lang/InternalError;

    invoke-direct {p0}, Ljava/lang/InternalError;-><init>()V

    goto :goto_6

    :goto_5
    throw p0

    :goto_6
    goto :goto_5
.end method

.method private static o(Ljava/lang/String;Lfreemarker/core/return;)V
    .locals 1

    .line 1
    sget-object v0, Lfreemarker/core/return;->const:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object p1, Lfreemarker/core/return;->catch:Ljava/util/Set;

    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3
    sget-object p1, Lfreemarker/core/return;->break:Ljava/util/Set;

    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static p(Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/return;)V
    .locals 1

    .line 1
    sget-object v0, Lfreemarker/core/return;->const:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object p2, Lfreemarker/core/return;->catch:Ljava/util/Set;

    invoke-interface {p2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    sget-object p0, Lfreemarker/core/return;->break:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public case()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lfreemarker/core/return;->this:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d(II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    if-ne p1, p2, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lfreemarker/core/return;->this:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lfreemarker/core/b5;->final(Ljava/lang/String;II)Landroid/support/v4/k52;

    move-result-object p1

    throw p1
.end method

.method public final e(III)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    if-lt p1, p2, :cond_0

    if-gt p1, p3, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lfreemarker/core/return;->this:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lfreemarker/core/b5;->super(Ljava/lang/String;III)Landroid/support/v4/k52;

    move-result-object p1

    throw p1
.end method

.method public else()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public final f(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lfreemarker/core/return;->d(II)V

    return-void
.end method

.method public for()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lfreemarker/core/return;->goto:Lfreemarker/core/h0;

    invoke-virtual {v1}, Lfreemarker/core/h4;->for()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lfreemarker/core/return;->this:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final g(Ljava/util/List;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, p1, p2, p3}, Lfreemarker/core/return;->e(III)V

    return-void
.end method

.method public goto(I)Lfreemarker/core/f3;
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1
    sget-object p1, Lfreemarker/core/f3;->new:Lfreemarker/core/f3;

    return-object p1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 3
    :cond_1
    sget-object p1, Lfreemarker/core/f3;->for:Lfreemarker/core/f3;

    return-object p1
.end method

.method public final h(Ljava/util/List;I)Ljava/lang/Number;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lfreemarker/template/TemplateModel;

    .line 2
    instance-of v0, p1, Lfreemarker/template/TemplateNumberModel;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Lfreemarker/template/TemplateNumberModel;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lfreemarker/core/f0;->import(Lfreemarker/template/TemplateNumberModel;Lfreemarker/core/h0;)Ljava/lang/Number;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lfreemarker/core/return;->this:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2, p1}, Lfreemarker/core/b5;->default(Ljava/lang/String;ILfreemarker/template/TemplateModel;)Landroid/support/v4/k52;

    move-result-object p1

    throw p1
.end method

.method public final i(Ljava/util/List;I)Ljava/lang/Number;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p2, :cond_0

    invoke-virtual {p0, p1, p2}, Lfreemarker/core/return;->h(Ljava/util/List;I)Ljava/lang/Number;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public instanceof()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final j(Ljava/util/List;I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p2, :cond_0

    invoke-virtual {p0, p1, p2}, Lfreemarker/core/return;->k(Ljava/util/List;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final k(Ljava/util/List;I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/k52;
        }
    .end annotation

    .line 1
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lfreemarker/template/TemplateModel;

    .line 2
    instance-of v0, p1, Lfreemarker/template/TemplateScalarModel;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Lfreemarker/template/TemplateScalarModel;

    const/4 p2, 0x0

    invoke-static {p1, p2, p2}, Lfreemarker/core/f0;->native(Lfreemarker/template/TemplateScalarModel;Lfreemarker/core/h0;Lfreemarker/core/d0;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lfreemarker/core/return;->this:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2, p1}, Lfreemarker/core/b5;->package(Ljava/lang/String;ILfreemarker/template/TemplateModel;)Landroid/support/v4/k52;

    move-result-object p1

    throw p1
.end method

.method public final m(I[Ljava/lang/Object;)Landroid/support/v4/k52;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lfreemarker/core/return;->this:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lfreemarker/core/b5;->static(Ljava/lang/String;I[Ljava/lang/Object;)Landroid/support/v4/k52;

    move-result-object p1

    return-object p1
.end method

.method public final n([Ljava/lang/Object;)Landroid/support/v4/k52;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lfreemarker/core/return;->this:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lfreemarker/core/b5;->continue(Ljava/lang/String;[Ljava/lang/Object;)Landroid/support/v4/k52;

    move-result-object p1

    return-object p1
.end method

.method public q(Lfreemarker/core/h0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfreemarker/core/return;->goto:Lfreemarker/core/h0;

    return-void
.end method

.method public static(Ljava/lang/String;Lfreemarker/core/h0;Lfreemarker/core/h0$do;)Lfreemarker/core/h0;
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfreemarker/core/return;

    .line 2
    iget-object v1, p0, Lfreemarker/core/return;->goto:Lfreemarker/core/h0;

    invoke-virtual {v1, p1, p2, p3}, Lfreemarker/core/h0;->return(Ljava/lang/String;Lfreemarker/core/h0;Lfreemarker/core/h0$do;)Lfreemarker/core/h0;

    move-result-object p1

    iput-object p1, v0, Lfreemarker/core/return;->goto:Lfreemarker/core/h0;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 3
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Internal error: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public this(I)Ljava/lang/Object;
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Lfreemarker/core/return;->this:Ljava/lang/String;

    return-object p1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 3
    :cond_1
    iget-object p1, p0, Lfreemarker/core/return;->goto:Lfreemarker/core/h0;

    return-object p1
.end method
